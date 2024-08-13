import 'package:flutter/widgets.dart';
import 'theme_tap.dart';

class WxSheetThemeTapM2 extends WxSheetThemeTap {
  WxSheetThemeTapM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });

  @override
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        );
  }

  @override
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          titleColor: severity ?? primaryColor,
          foregroundColor: severity ?? primaryColor,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          titleColor: severity ?? primaryColor,
          foregroundColor: severity ?? primaryColor,
          backgroundColor: severity ?? primaryColor,
          overlayColor: colorScheme.onSurface,
        );
  }

  @override
  filledStyle(severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: severity ?? primaryColor,
        );
  }

  @override
  elevatedStyle(severity) {
    return super.elevatedStyle(severity).copyWith(
          titleColor: severity ?? primaryColor,
          foregroundColor: severity ?? primaryColor,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  outlinedStyle(severity) {
    return super.outlinedStyle(severity).copyWith(
          titleColor: severity ?? primaryColor,
          foregroundColor: severity ?? primaryColor,
          backgroundColor: severity ?? transparentColor,
          overlayColor: colorScheme.onSurface,
          borderOpacity: .3,
        );
  }
}
