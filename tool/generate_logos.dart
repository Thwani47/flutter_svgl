// ignore_for_file: avoid_print

import 'dart:io';
import 'common.dart';

enum GenerationResult { generated, skipped, error }

void main(List<String> args) {
  const baseAssetPath = 'assets';
  const outputDir = 'lib/src';

  final categories = Directory(
    baseAssetPath,
  ).listSync().whereType<Directory>().map((dir) => dir.path.split("/").last);

  int generatedCount = 0;
  int skippedCount = 0;
  int errorCount = 0;

  for (var category in categories) {
    print('Processing category: $category');

    // Generate logos
    final result = _generateLogos(category, baseAssetPath, outputDir);
    switch (result) {
      case GenerationResult.generated:
        generatedCount++;
        break;
      case GenerationResult.skipped:
        skippedCount++;
        break;
      case GenerationResult.error:
        errorCount++;
        break;
    }
  }

  print('\n=== Generation Summary ===');
  print('Generated: $generatedCount files');
  print('Skipped (up to date): $skippedCount files');
  print('Errors: $errorCount files');
  print('Total processed: ${generatedCount + skippedCount + errorCount} files');
}

GenerationResult _generateLogos(
  String category,
  String baseAssetPath,
  String outputDir,
) {
  final assetPath = '$baseAssetPath/$category';
  final className = '${toPascalCase(category)}Logos';

  try {
    final svgFiles = getSvgFiles(assetPath);
    final outFile = File('$outputDir/${category.toLowerCase()}_logos.dart');

    // Check if regeneration is needed
    if (_shouldSkipGeneration(svgFiles, outFile)) {
      print('  ↻ Skipped (up to date): ${outFile.path}');
      return GenerationResult.skipped;
    }

    final output = generateLogoClass(
      category: category,
      className: className,
      svgFiles: svgFiles,
    );

    outFile.createSync(recursive: true);
    outFile.writeAsStringSync(output);

    print('  ✓ Generated ${outFile.path} with ${svgFiles.length} logos');
    return GenerationResult.generated;
  } catch (e) {
    print('  ✗ Error generating logos for $category: $e');
    return GenerationResult.error;
  }
}

/// Checks if generation should be skipped based on file modification times
bool _shouldSkipGeneration(List<File> svgFiles, File outFile) {
  // If output file doesn't exist, we need to generate
  if (!outFile.existsSync()) {
    return false;
  }

  // Get the last modification time of the output file
  final outputModTime = outFile.lastModifiedSync();

  // Check if any SVG file is newer than the output file
  for (final svgFile in svgFiles) {
    if (svgFile.lastModifiedSync().isAfter(outputModTime)) {
      return false; // Need to regenerate
    }
  }

  // Also check if the generation script itself has been modified
  final scriptFile = File('tool/generate_logos.dart');
  if (scriptFile.existsSync() &&
      scriptFile.lastModifiedSync().isAfter(outputModTime)) {
    return false; // Need to regenerate
  }

  final commonFile = File('tool/common.dart');
  if (commonFile.existsSync() &&
      commonFile.lastModifiedSync().isAfter(outputModTime)) {
    return false; // Need to regenerate
  }

  // All checks passed, we can skip generation
  return true;
}
