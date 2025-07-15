import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class PaymentLogos {
static const String _baseString = "packages/flutter_svgl/assets/payment/";

  /// Returns the **mercado_pago.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.payment.mercadoPago(width: 48, height: 48);
  /// ```
  Widget mercadoPago({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/mercado_pago.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **paypal.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.payment.paypal(width: 48, height: 48);
  /// ```
  Widget paypal({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/paypal.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
