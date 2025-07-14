import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svgl/src/color_extension.dart';


class AIIcons {
  static const String _baseString = "packages/flutter_svgl/assets/";

  Widget midday({double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '$_baseString/ai/midday.svg',
      width: width,
      height: height,
      colorFilter:
          color?.toColorFilter,
    );
  }
}