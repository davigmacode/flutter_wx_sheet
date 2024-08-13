import 'package:flutter/widgets.dart';
import 'package:wx_sheet/src/basic/style.dart';
import 'theme_tap.dart';

class WxSheetThemeTapIOS extends WxSheetThemeTap {
  WxSheetThemeTapIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });

  @override
  get primaryColor => cupertinoTheme.primaryColor;

  @override
  get overlay => false;

  @override
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          pressedStyle: const WxSheetStyle(opacity: .4),
        );
  }

  @override
  textStyle(data) {
    return super.textStyle(data).copyWith(
          titleColor: data.severity ?? primaryColor,
          foregroundColor: data.severity ?? primaryColor,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  tonalStyle(data) {
    return super.tonalStyle(data).copyWith(
          titleColor: data.severity ?? primaryColor,
          foregroundColor: data.severity ?? primaryColor,
          backgroundColor: data.severity ?? primaryColor,
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
          borderOpacity: .3,
        );
  }
}
