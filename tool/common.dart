import 'dart:io';

/// Converts 'my_logo_wordmark.svg' to 'myLogoWordmark'
/// Also handles special characters like dots, hashes, plus signs, etc.
String fileNameToMethod(String fileName) {
  final name = fileName.replaceAll('.svg', '');

  // First, handle specific replacements for common programming terms
  String processedName = name
      .replaceAll('c#', 'csharp')
      .replaceAll('c++', 'cplusplus')
      .replaceAll('c-plus', 'cplusplus')
      .replaceAll('.js', 'js')
      .replaceAll('.dev', 'dev')
      .replaceAll('.io', 'io')
      .replaceAll('.com', 'com')
      .replaceAll('.net', 'net')
      .replaceAll('.org', 'org')
      .replaceAll('@', 'at')
      .replaceAll('+', 'plus')
      .replaceAll('(', '')
      .replaceAll(')', '')
      .replaceAll('[', '')
      .replaceAll(']', '')
      .replaceAll('{', '')
      .replaceAll('}', '')
      .replaceAll('<', '')
      .replaceAll('>', '')
      .replaceAll('&', 'and')
      .replaceAll('%', 'percent')
      .replaceAll(r'$', 'dollar')
      .replaceAll('!', 'exclamation')
      .replaceAll('?', 'question')
      .replaceAll('=', 'equals')
      .replaceAll(':', 'colon')
      .replaceAll(';', 'semicolon')
      .replaceAll(',', 'comma')
      .replaceAll('.', 'dot')
      .replaceAll(' ', '_')
      .replaceAll('/', 'slash')
      .replaceAll('\\', 'backslash')
      .replaceAll('|', 'pipe')
      .replaceAll('~', 'tilde')
      .replaceAll('`', 'backtick')
      .replaceAll('"', 'quote')
      .replaceAll("'", 'apostrophe')
      .replaceAll('*', 'star')
      .replaceAll('^', 'caret');

  // Split by underscores and hyphens
  final parts = processedName.split(RegExp(r'[_\-]'));
  final buffer = StringBuffer();

  for (var i = 0; i < parts.length; i++) {
    final part = parts[i];

    // Skip empty parts
    if (part.isEmpty) continue;

    if (i == 0) {
      buffer.write(part.toLowerCase());
    } else {
      buffer.write(part[0].toUpperCase() + part.substring(1));
    }
  }

  String result = buffer.toString();

  // Ensure the result starts with a letter (not a number)
  if (result.isNotEmpty && RegExp(r'^[0-9]').hasMatch(result)) {
    result = 'logo$result';
  }

  // If the result is empty or only contains invalid characters, use a default
  if (result.isEmpty || !RegExp(r'^[a-zA-Z][a-zA-Z0-9]*$').hasMatch(result)) {
    result = 'logo${DateTime.now().millisecondsSinceEpoch}';
  }

  return result;
}

String toPascalCase(String input) {
  return input
      .split(RegExp(r'[_\-]'))
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join();
}

/// Gets all SVG files from a directory
List<File> getSvgFiles(String directoryPath) {
  final dir = Directory(directoryPath);

  if (!dir.existsSync()) {
    throw Exception('Directory $directoryPath does not exist');
  }

  return dir
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.svg'))
      .toList();
}

/// Generates the widget method for an SVG file
String generateWidgetMethod({
  required String fileName,
  required String methodName,
  required String category,
  required String basePackagePath,
}) {
  return '''
  /// Returns the **$fileName** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.$category.$methodName(width: 48, height: 48);
  /// ```
  Widget $methodName({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.network(
        '$basePackagePath/$fileName',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

''';
}

/// Generates the test method for an SVG file
String generateTestMethod({
  required String fileName,
  required String methodName,
  required String category,
  required String className,
}) {
  final testName = fileName.replaceAll('.svg', '');
  final goldenName = '${category}_$testName.png';

  return '''
  testWidgets('$className.$methodName matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.${category.toLowerCase()}.$methodName(width: 48, height: 60),
      goldenName: '$goldenName',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  }, tags: ['golden']);

''';
}

/// Generates imports for logo classes
String generateLogoImports() {
  return '''import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';''';
}

/// Generates imports for test files
String generateTestImports() {
  return '''import 'package:flutter_svgl/src/svgl.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers/golden_test_helper.dart';''';
}

/// Generates a complete logo class
String generateLogoClass({
  required String category,
  required String className,
  required List<File> svgFiles,
}) {
  final buffer = StringBuffer();

  buffer.writeln(generateLogoImports());
  buffer.writeln();
  buffer.writeln('class $className {');
  buffer.writeln(
    'static const String _baseString = "https://raw.githubusercontent.com/Thwani47/flutter_svgl/refs/heads/master/assets/$category/";',
  );
  buffer.writeln();

  for (var file in svgFiles) {
    final fileName = file.uri.pathSegments.last;
    final methodName = fileNameToMethod(fileName);

    buffer.write(
      generateWidgetMethod(
        fileName: fileName,
        methodName: methodName,
        category: category,
        basePackagePath: '\$_baseString',
      ),
    );
  }

  buffer.writeln();

  buffer.writeln('}');

  return buffer.toString();
}
