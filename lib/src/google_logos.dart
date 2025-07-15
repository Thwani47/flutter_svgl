import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class GoogleLogos {
static const String _baseString = "packages/flutter_svgl/assets/google/";

  /// Returns the **youtube_music.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.youtubeMusic(width: 48, height: 48);
  /// ```
  Widget youtubeMusic({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/youtube_music.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **gemini.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.gemini(width: 48, height: 48);
  /// ```
  Widget gemini({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/gemini.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **google_drive.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.googleDrive(width: 48, height: 48);
  /// ```
  Widget googleDrive({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/google_drive.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **google_cloud.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.googleCloud(width: 48, height: 48);
  /// ```
  Widget googleCloud({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/google_cloud.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **gmail.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.gmail(width: 48, height: 48);
  /// ```
  Widget gmail({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/gmail.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **google_colaboratory.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.googleColaboratory(width: 48, height: 48);
  /// ```
  Widget googleColaboratory({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/google_colaboratory.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **google.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.google(width: 48, height: 48);
  /// ```
  Widget google({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/google.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **youtube.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.google.youtube(width: 48, height: 48);
  /// ```
  Widget youtube({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/youtube.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
