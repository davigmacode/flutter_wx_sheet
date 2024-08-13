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
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          titleColor: severity ?? primaryColor,
          foregroundColor: severity ?? primaryColor,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          titleColor: severity ?? primaryColor,
          foregroundColor: severity ?? primaryColor,
          backgroundColor: severity ?? primaryColor,
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
          borderOpacity: .3,
        );
  }
}
