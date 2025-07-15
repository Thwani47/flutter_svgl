import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CybersecurityLogos {
static const String _baseString = "packages/flutter_svgl/assets/cybersecurity/";

  /// Returns the **hack_the_box.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.cybersecurity.hackTheBox(width: 48, height: 48);
  /// ```
  Widget hackTheBox({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/hack_the_box.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
