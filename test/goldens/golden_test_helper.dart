import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testSvgLogo({
  required Widget svgWidget,
  required String goldenName,
  required double expectedWidth,
  required double expectedHeight,
  Widget Function(Widget child)? wrapper,
  required WidgetTester tester,
}) async {
  final wrapped =
      (wrapper != null) ? wrapper(svgWidget) : Center(child: svgWidget);

  await tester.pumpWidget(MaterialApp(home: Scaffold(body: wrapped)));

  final size = tester.getSize(find.byType(SvgPicture));
  expect(size.width, expectedWidth);
  expect(size.height, expectedHeight);

  await expectLater(find.byType(SvgPicture), matchesGoldenFile('goldens/$goldenName'));
}
