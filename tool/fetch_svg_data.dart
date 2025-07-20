// ignore_for_file: avoid_print

import 'dart:io';

import 'package:http/http.dart' as http;

enum DownloadResult { success, failed, skipped }

void main() async {
  final svgDataUrl = Uri.parse(
    "https://raw.githubusercontent.com/pheralb/svgl/main/src/data/svgs.ts",
  );

  print('Fetching SVG data from: $svgDataUrl');
  final response = await http.get(svgDataUrl);

  if (response.statusCode == 200) {
    final content = response.body;
    final svgList = _parseTypescriptData(content);

    print('Found ${svgList.length} SVG entries');

    // Create assets directory if it doesn't exist
    final assetsDir = Directory('assets');
    if (!await assetsDir.exists()) {
      await assetsDir.create();
    }

    int downloadedCount = 0;
    int failedCount = 0;
    int skippedCount = 0;

    for (var item in svgList) {
      final title = item['title'] ?? 'Unknown';
      final category = item['category'] ?? 'Other';
      final route = item['route'];

      print('\nProcessing: $title (Category: $category)');

      // Create category directory
      final categoryDir = Directory('assets/$category');
      if (!await categoryDir.exists()) {
        await categoryDir.create(recursive: true);
      }

      if (route is String) {
        // Single SVG file
        final result = await _downloadSvg(route, 'assets/$category', title);
        if (result == DownloadResult.success) {
          downloadedCount++;
        } else if (result == DownloadResult.failed) {
          failedCount++;
        } else {
          skippedCount++;
        }
      } else if (route is Map) {
        // Light and dark variants
        if (route['light'] != null) {
          final result = await _downloadSvg(
            route['light'],
            'assets/$category',
            '${title}_light',
          );
          if (result == DownloadResult.success) {
            downloadedCount++;
          } else if (result == DownloadResult.failed) {
            failedCount++;
          } else {
            skippedCount++;
          }
        }
        if (route['dark'] != null) {
          final result = await _downloadSvg(
            route['dark'],
            'assets/$category',
            '${title}_dark',
          );
          if (result == DownloadResult.success) {
            downloadedCount++;
          } else if (result == DownloadResult.failed) {
            failedCount++;
          } else {
            skippedCount++;
          }
        }
      }
    }

    print('\n=== Download Summary ===');
    print('Successfully downloaded: $downloadedCount files');
    print('Skipped (already exist): $skippedCount files');
    print('Failed downloads: $failedCount files');
    print(
      'Total processed: ${downloadedCount + skippedCount + failedCount} files',
    );
  } else {
    print('Request failed with status ${response.statusCode}');
  }
}

List<Map<String, dynamic>> _parseTypescriptData(String content) {
  final List<Map<String, dynamic>> svgList = [];

  // Extract the array content between [ and ]
  final arrayMatch = RegExp(
    r'export const svgs: iSVG\[\] = \[(.*)\];',
    dotAll: true,
  ).firstMatch(content);
  if (arrayMatch == null) {
    print('Could not find SVG array in TypeScript file');
    return svgList;
  }

  final arrayContent = arrayMatch.group(1)!;

  // Split by object boundaries (looking for },\s*{)
  final objectStrings = arrayContent.split(RegExp(r'},\s*{'));

  for (int i = 0; i < objectStrings.length; i++) {
    String objectStr = objectStrings[i].trim();

    // Add back the braces
    if (i > 0) objectStr = '{$objectStr';
    if (i < objectStrings.length - 1) objectStr = '$objectStr}';

    final svgObject = _parseObjectString(objectStr);
    if (svgObject.isNotEmpty) {
      svgList.add(svgObject);
    }
  }

  return svgList;
}

Map<String, dynamic> _parseObjectString(String objectStr) {
  final Map<String, dynamic> result = {};

  // Clean up the string
  objectStr = objectStr.replaceAll(RegExp(r'^\s*\{?\s*'), '');
  objectStr = objectStr.replaceAll(RegExp(r'\s*\}?\s*$'), '');

  // Extract title
  final titleMatch = RegExp(
    r'''title:\s*['"]([^'"]+)['"]''',
  ).firstMatch(objectStr);
  if (titleMatch != null) {
    result['title'] = titleMatch.group(1);
  }

  // Extract category
  final categoryMatch = RegExp(
    r'''category:\s*['"]([^'"]+)['"]''',
  ).firstMatch(objectStr);
  if (categoryMatch != null) {
    result['category'] = categoryMatch.group(1);
  } else {
    // Handle array categories
    final categoryArrayMatch = RegExp(
      r'category:\s*\[([^\]]+)\]',
    ).firstMatch(objectStr);
    if (categoryArrayMatch != null) {
      final categoryArray = categoryArrayMatch.group(1)!;
      final categories =
          RegExp(
            r'''['"]([^'"]+)['"]''',
          ).allMatches(categoryArray).map((match) => match.group(1)!).toList();
      result['category'] = categories.isNotEmpty ? categories.first : 'Other';
    }
  }

  // Extract route
  final routeStringMatch = RegExp(
    r'''route:\s*['"]([^'"]+)['"]''',
  ).firstMatch(objectStr);
  if (routeStringMatch != null) {
    result['route'] = routeStringMatch.group(1);
  } else {
    // Handle object routes with light/dark
    final routeObjectMatch = RegExp(
      r'route:\s*\{([^}]+)\}',
    ).firstMatch(objectStr);
    if (routeObjectMatch != null) {
      final routeContent = routeObjectMatch.group(1)!;
      final routeMap = <String, String>{};

      final lightMatch = RegExp(
        r'''light:\s*['"]([^'"]+)['"]''',
      ).firstMatch(routeContent);
      if (lightMatch != null) {
        routeMap['light'] = lightMatch.group(1)!;
      }

      final darkMatch = RegExp(
        r'''dark:\s*['"]([^'"]+)['"]''',
      ).firstMatch(routeContent);
      if (darkMatch != null) {
        routeMap['dark'] = darkMatch.group(1)!;
      }

      if (routeMap.isNotEmpty) {
        result['route'] = routeMap;
      }
    }
  }

  return result;
}

Future<DownloadResult> _downloadSvg(
  String svgUrl,
  String directory,
  String fileName,
) async {
  try {
    // Clean up filename to be filesystem-safe
    final cleanFileName =
        fileName
            .replaceAll(RegExp(r'[<>:"/\\|?*]'), '_')
            .replaceAll(' ', '_')
            .toLowerCase();

    final file = File('$directory/$cleanFileName.svg');

    // Check if file already exists
    if (await file.exists()) {
      print('  ↻ Skipped (already exists): ${file.path}');
      return DownloadResult.skipped;
    }

    final fullUrl =
        svgUrl.startsWith('http') ? svgUrl : 'https://svgl.vercel.app$svgUrl';

    print('  Downloading: $fullUrl');

    final response = await http.get(Uri.parse(fullUrl));

    if (response.statusCode == 200) {
      await file.writeAsBytes(response.bodyBytes);
      print('  ✓ Saved: ${file.path}');
      return DownloadResult.success;
    } else {
      print('  ✗ Failed to download: ${response.statusCode}');
      return DownloadResult.failed;
    }
  } catch (e) {
    print('  ✗ Error downloading $fileName: $e');
    return DownloadResult.failed;
  }
}
