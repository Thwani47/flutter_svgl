// ignore_for_file: avoid_print

import 'dart:io';
import 'common.dart';

void main(List<String> args) {
  const baseAssetPath = 'assets';
  const outputDir = 'lib/src';
  const testDir = 'test';
  
  final categories = Directory(baseAssetPath)
      .listSync()
      .whereType<Directory>()
      .map((dir) => dir.path.split("/").last);

  for (var category in categories) {
    print('Processing category: $category');
    
    // Generate logos
    _generateLogos(category, baseAssetPath, outputDir);
    
    // Generate tests
    _generateTests(category, testDir);
  }
}

void _generateLogos(String category, String baseAssetPath, String outputDir) {
  final assetPath = '$baseAssetPath/$category';
  final className = '${toPascalCase(category)}Logos';

  try {
    final svgFiles = getSvgFiles(assetPath);
    final output = generateLogoClass(
      category: category,
      className: className,
      svgFiles: svgFiles,
    );

    final outFile = File('$outputDir/${category}_logos.dart');
    outFile.createSync(recursive: true);
    outFile.writeAsStringSync(output);

    print('  ✓ Generated ${outFile.path} with ${svgFiles.length} logos');
  } catch (e) {
    print('  ✗ Error generating logos for $category: $e');
  }
}

void _generateTests(String category, String testDir) {
  final assetPath = 'assets/$category';
  final className = '${toPascalCase(category)}Logos';
  final outputFilePath = '$testDir/${category}_logos_test.dart';

  try {
    final svgFiles = getSvgFiles(assetPath);
    final output = generateTestFile(
      category: category,
      className: className,
      svgFiles: svgFiles,
    );

    final outFile = File(outputFilePath);
    outFile.createSync(recursive: true);
    outFile.writeAsStringSync(output);

    print('  ✓ Generated ${outFile.path} with ${svgFiles.length} tests');
  } catch (e) {
    print('  ✗ Error generating tests for $category: $e');
  }
}
