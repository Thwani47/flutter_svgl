import 'dart:io';

void main() {
  const assetPath = 'assets/ai';
  const className = 'AIIcons';

  final dir = Directory(assetPath);

  if (!dir.existsSync()) {
    // ignore: avoid_print
    print('Directory $assetPath does not exist');
    return;
  }

  final buffer = StringBuffer();

  buffer.writeln("import 'package:flutter/widgets.dart';");
  buffer.writeln("import 'package:flutter_svg/svg.dart';");

  buffer.writeln('class $className {');

  buffer.writeln(
    'static const String _baseString = "packages/flutter_svgl/assets/ai/";',
  );

  for (var file in dir.listSync()) {
    if (file is File && file.path.endsWith('.svg')) {
      final fileName = file.uri.pathSegments.last;
      final methodName = _fileNameToMethod(fileName);

      buffer.writeln('''
  /// Returns the **$fileName** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.ai.$methodName(width: 48, height: 48);
  /// ```
  Widget $methodName({double width = 24, double height = 24, ColorFilter? colorFilter}) {
    return SvgPicture.asset(
      '\$_baseString/$fileName',
      width: width,
      height: height,
      colorFilter: colorFilter,
    );
  }
''');
    }
  }

  buffer.writeln('}');

  final output = buffer.toString();

  final outFile = File('lib/src/ai_icons.dart');
  outFile.createSync(recursive: true);
  outFile.writeAsStringSync(output);

  print('Generated ${outFile.path}');
}

/// Converts 'my_icon_wordmark.svg' to 'myIconWordmark'
String _fileNameToMethod(String fileName) {
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
