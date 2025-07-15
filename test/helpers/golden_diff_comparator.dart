import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

class GoldenDiffComparator extends LocalFileComparator {
  GoldenDiffComparator(String testFile, {required this.tolerancePercentage})
    : super(Uri.parse(testFile));

  final double tolerancePercentage;
  double get _kGoldenDiffTolerance => tolerancePercentage / 100;

  @override
  Future<bool> compare(Uint8List imageBytes, Uri golden) async {
    final ComparisonResult result = await GoldenFileComparator.compareLists(
      imageBytes,
      await getGoldenBytes(golden),
    );

    if (!result.passed && result.diffPercent > _kGoldenDiffTolerance) {
      final String error = await generateFailureOutput(result, golden, basedir);
      throw FlutterError(error);
    }

    if (!result.passed) {
      debugPrint(
        'A difference of ${result.diffPercent * 100}% was found when comparing $golden',
      );
    }

    return result.passed ||
        (result.diffPercent <= _kGoldenDiffTolerance && Platform.isLinux);
  }
}
