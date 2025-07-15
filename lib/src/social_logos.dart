import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SocialLogos {
static const String _baseString = "packages/flutter_svgl/assets/social/";

  /// Returns the **patreon_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.patreonLight(width: 48, height: 48);
  /// ```
  Widget patreonLight({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/patreon_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **carrd.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.carrd(width: 48, height: 48);
  /// ```
  Widget carrd({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/carrd.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **instagram_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.instagramDark(width: 48, height: 48);
  /// ```
  Widget instagramDark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/instagram_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **meta.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.meta(width: 48, height: 48);
  /// ```
  Widget meta({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/meta.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **x_(formerly_twitter)_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.xFormerlyTwitterDark(width: 48, height: 48);
  /// ```
  Widget xFormerlyTwitterDark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/x_(formerly_twitter)_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **daily.dev_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.dailydevLight(width: 48, height: 48);
  /// ```
  Widget dailydevLight({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/daily.dev_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **instagram_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.instagramLight(width: 48, height: 48);
  /// ```
  Widget instagramLight({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/instagram_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **x_(formerly_twitter)_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.xFormerlyTwitterLight(width: 48, height: 48);
  /// ```
  Widget xFormerlyTwitterLight({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/x_(formerly_twitter)_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **matrix_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.matrixLight(width: 48, height: 48);
  /// ```
  Widget matrixLight({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/matrix_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **mastodon.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.mastodon(width: 48, height: 48);
  /// ```
  Widget mastodon({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/mastodon.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **vk.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.vk(width: 48, height: 48);
  /// ```
  Widget vk({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/vk.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **arc_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.arcLight(width: 48, height: 48);
  /// ```
  Widget arcLight({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/arc_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **threads_light.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.threadsLight(width: 48, height: 48);
  /// ```
  Widget threadsLight({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/threads_light.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **bluesky.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.bluesky(width: 48, height: 48);
  /// ```
  Widget bluesky({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/bluesky.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **telegram.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.telegram(width: 48, height: 48);
  /// ```
  Widget telegram({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/telegram.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **infojobs.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.infojobs(width: 48, height: 48);
  /// ```
  Widget infojobs({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/infojobs.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **threads_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.threadsDark(width: 48, height: 48);
  /// ```
  Widget threadsDark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/threads_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **peerlist.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.peerlist(width: 48, height: 48);
  /// ```
  Widget peerlist({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/peerlist.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **matrix_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.matrixDark(width: 48, height: 48);
  /// ```
  Widget matrixDark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/matrix_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **facebook.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.facebook(width: 48, height: 48);
  /// ```
  Widget facebook({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/facebook.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **pinterest.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.pinterest(width: 48, height: 48);
  /// ```
  Widget pinterest({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/pinterest.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **whatsapp.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.whatsapp(width: 48, height: 48);
  /// ```
  Widget whatsapp({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/whatsapp.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **daily.dev_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.dailydevDark(width: 48, height: 48);
  /// ```
  Widget dailydevDark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/daily.dev_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **arc_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.arcDark(width: 48, height: 48);
  /// ```
  Widget arcDark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/arc_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **reddit.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.reddit(width: 48, height: 48);
  /// ```
  Widget reddit({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/reddit.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **patreon_dark.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.patreonDark(width: 48, height: 48);
  /// ```
  Widget patreonDark({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/patreon_dark.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **linkedin.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.linkedin(width: 48, height: 48);
  /// ```
  Widget linkedin({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/linkedin.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **hashnode.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.hashnode(width: 48, height: 48);
  /// ```
  Widget hashnode({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/hashnode.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **twitter.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.twitter(width: 48, height: 48);
  /// ```
  Widget twitter({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/twitter.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **messenger.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.messenger(width: 48, height: 48);
  /// ```
  Widget messenger({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/messenger.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **skype.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.skype(width: 48, height: 48);
  /// ```
  Widget skype({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/skype.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }

  /// Returns the **tiktok.svg** SVG as a widget.
  ///
  /// Supports [width], [height], and [colorFilter] for customization.
  ///
  /// Example:
  /// ```dart
  /// SVGL.social.tiktok(width: 48, height: 48);
  /// ```
  Widget tiktok({
    double width = 24, 
    double height = 24, 
    ColorFilter? colorFilter,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        '$_baseString/tiktok.svg',
        fit: BoxFit.fill,
        colorFilter: colorFilter,
      ),
    );
  }


}
