// ignore_for_file: avoid_print

import 'dart:io';
import 'common.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart generate_tests.dart <category>');
    print('Example: dart generate_tests.dart ai');
    return;
  }

  final category = args[0];
  final assetPath = 'assets/$category';
  final outputFilePath = 'test/${category}_logos_test.dart';
  final className = '${toPascalCase(category)}Logos';

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

    print('Generated ${outFile.path} with ${svgFiles.length} tests');
  } catch (e) {
    print('Error generating tests for $category: $e');
  }
}
