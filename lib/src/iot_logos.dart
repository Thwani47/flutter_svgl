import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class IotLogos {
static const String _baseString = "packages/flutter_svgl/assets/iot/";

  /// Returns the **home_assistant.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.iot.homeAssistant(width: 48, height: 48);
  /// ```
  Widget homeAssistant({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/home_assistant.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
