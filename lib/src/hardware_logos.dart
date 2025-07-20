import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HardwareLogos {
  static const String _baseString =
      "https://raw.githubusercontent.com/Thwani47/flutter_svgl/refs/heads/master/assets/hardware/";

  /// Returns the **raspberry_pi.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.hardware.raspberryPi(width: 48, height: 48);
  /// ```
  Widget raspberryPi({
    double width = 24,
    double height = 24,
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.network(
        '$_baseString/raspberry_pi.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }
}
