import 'package:flutter_svgl/src/svgl.dart';
import 'package:flutter_test/flutter_test.dart';

import 'goldens/golden_test_helper.dart';

void main() {
  testWidgets('AIICons.midday matches golden', (WidgetTester tester) async {
    await testSvgIcon(
      svgWidget: SVGL.ai.midday(width: 48, height: 60),
      goldenName: 'ai_midday.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
}
