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
  textStyle(data) {
    return super.textStyle(data).copyWith(
          titleColor: data.severity ?? primaryColor,
          foregroundColor: data.severity ?? primaryColor,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        );
  }

  @override
  tonalStyle(data) {
    return super.tonalStyle(data).copyWith(
          titleColor: data.severity ?? primaryColor,
          foregroundColor: data.severity ?? primaryColor,
          backgroundColor: data.severity ?? primaryColor,
          overlayColor: colorScheme.onSurface,
        );
  }

  @override
  filledStyle(data) {
    return super.filledStyle(data).copyWith(
          backgroundColor: data.severity ?? primaryColor,
        );
  }

  @override
  elevatedStyle(data) {
    return super.elevatedStyle(data).copyWith(
          titleColor: data.severity ?? primaryColor,
          foregroundColor: data.severity ?? primaryColor,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  outlinedStyle(data) {
    return super.outlinedStyle(data).copyWith(
          titleColor: data.severity ?? primaryColor,
          foregroundColor: data.severity ?? primaryColor,
          backgroundColor: data.severity ?? transparentColor,
          overlayColor: colorScheme.onSurface,
          borderOpacity: .3,
        );
  }
}
