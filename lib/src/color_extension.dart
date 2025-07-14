import 'package:flutter/widgets.dart';

extension ToColorFilter on Color {
  ColorFilter? get toColorFilter {
    return ColorFilter.mode(this, BlendMode.color);
  }
}