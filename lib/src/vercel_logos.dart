import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class VercelLogos {
static const String _baseString = "packages/flutter_svgl/assets/vercel/";

  /// Returns the **v0_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.vercel.v0Light(width: 48, height: 48);
  /// ```
  Widget v0Light({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/v0_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **v0_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.vercel.v0Dark(width: 48, height: 48);
  /// ```
  Widget v0Dark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/v0_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
