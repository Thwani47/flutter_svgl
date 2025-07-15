import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CompilerLogos {
static const String _baseString = "packages/flutter_svgl/assets/compiler/";

  /// Returns the **parcel.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.parcel(width: 48, height: 48);
  /// ```
  Widget parcel({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/parcel.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **biomejs.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.biomejs(width: 48, height: 48);
  /// ```
  Widget biomejs({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/biomejs.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **rspack.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.rspack(width: 48, height: 48);
  /// ```
  Widget rspack({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/rspack.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **postcss.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.postcss(width: 48, height: 48);
  /// ```
  Widget postcss({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/postcss.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **swc.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.swc(width: 48, height: 48);
  /// ```
  Widget swc({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/swc.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **babel.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.babel(width: 48, height: 48);
  /// ```
  Widget babel({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/babel.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **rolldown.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.rolldown(width: 48, height: 48);
  /// ```
  Widget rolldown({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/rolldown.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **esbuild.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.compiler.esbuild(width: 48, height: 48);
  /// ```
  Widget esbuild({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/esbuild.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
