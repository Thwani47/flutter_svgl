import 'dart:io';
import 'common.dart';

void main() {
  const baseAssetPath = 'assets';
  const outputDir = 'lib/src';

  final categories = Directory(baseAssetPath)
      .listSync()
      .whereType<Directory>()
      .map((dir) => dir.path.split("/").last);

  for (var category in categories) {
    _generateLogos(category, baseAssetPath, outputDir);
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

    print('Generated ${outFile.path} with ${svgFiles.length} logos');
  } catch (e) {
    print('Error generating logos for $category: $e');
  }
}