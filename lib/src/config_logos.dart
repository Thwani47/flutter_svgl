import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ConfigLogos {
  static const String _baseString =
      "https://raw.githubusercontent.com/Thwani47/flutter_svgl/refs/heads/master/assets/config/";

  /// Returns the **dotenv.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.config.dotenv(width: 48, height: 48);
  /// ```
  Widget dotenv({
    double width = 24,
    double height = 24,
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.network(
        '$_baseString/dotenv.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }
}
