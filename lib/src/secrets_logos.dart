import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SecretsLogos {
static const String _baseString = "packages/flutter_svgl/assets/secrets/";

  /// Returns the **dotenvx.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.secrets.dotenvx(width: 48, height: 48);
  /// ```
  Widget dotenvx({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/dotenvx.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
