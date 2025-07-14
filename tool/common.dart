import 'dart:io';

part 'generate_ai_logo_tests.dart';

/// Converts 'my_logo_wordmark.svg' to 'myLogoWordmark'
String fileNameToMethod(String fileName) {
  final name = fileName.replaceAll('.svg', '');
  final parts = name.split(RegExp(r'[_\-]'));
  final buffer = StringBuffer();

  for (var i = 0; i < parts.length; i++) {
    final part = parts[i];

    if (i == 0) {
      buffer.write(part.toLowerCase());
    } else {
      buffer.write(part[0].toUpperCase() + part.substring(1));
    }
  }

  return buffer.toString();
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
  
  return dir.listSync()
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
  Widget $methodName({double width = 24, double height = 24, ColorFilter? colorFilter}) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
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
    await testSvgIcon(
      svgWidget: SVGL.$category.$methodName(width: 48, height: 60),
      goldenName: '$goldenName',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
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

import 'goldens/golden_test_helper.dart';''';
}

/// Generates a complete logo class
String generateLogoClass({
  required String category,
  required String className,
  required List<File> svgFiles,
}) {
  final buffer = StringBuffer();
  
  buffer.writeln(generateLogoImports());
  buffer.writeln('class $className {');
  buffer.writeln('static const String _baseString = "packages/flutter_svgl/assets/$category/";');
  
  for (var file in svgFiles) {
    final fileName = file.uri.pathSegments.last;
    final methodName = fileNameToMethod(fileName);
    
    buffer.write(generateWidgetMethod(
      fileName: fileName,
      methodName: methodName,
      category: category,
      basePackagePath: '\$_baseString',
    ));
  }
  
  buffer.writeln('}');
  
  return buffer.toString();
}

/// Generates a complete test file
String generateTestFile({
  required String category,
  required String className,
  required List<File> svgFiles,
}) {
  final buffer = StringBuffer();
  
  buffer.writeln(generateTestImports());
  buffer.writeln();
  buffer.writeln('void main() {');
  
  for (var file in svgFiles) {
    final fileName = file.uri.pathSegments.last;
    final methodName = fileNameToMethod(fileName);
    
    buffer.write(generateTestMethod(
      fileName: fileName,
      methodName: methodName,
      category: category,
      className: className,
    ));
  }
  
  buffer.writeln('}');
  
  return buffer.toString();
}
