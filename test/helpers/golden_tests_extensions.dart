import 'package:flutter_test/flutter_test.dart';

import 'golden_diff_comparator.dart';

Future<void> expectGoldenMatches(
  Finder actual,
  String goldenFileKey,
  String? reason,
  double? tolerancePercentage,
) {
  final goldenPath = 'goldens/$goldenFileKey';
  goldenFileComparator = GoldenDiffComparator(
    '${(goldenFileComparator as LocalFileComparator).basedir}/$goldenFileKey',
    tolerancePercentage: tolerancePercentage ?? 0.5,
  );

  return expectLater(actual, matchesGoldenFile(goldenPath), reason: reason);
}
