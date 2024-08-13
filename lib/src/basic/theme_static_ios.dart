import 'package:flutter/widgets.dart';
import 'theme_static.dart';

class WxSheetThemeStaticIOS extends WxSheetThemeStatic {
  WxSheetThemeStaticIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });

  @override
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        );
  }

  @override
  textStyle(data) {
    return super.textStyle(data).copyWith(
          foregroundColor: data.severity ?? colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  tonalStyle(data) {
    return super.tonalStyle(data).copyWith(
          foregroundColor: data.severity ?? colorScheme.onSurface,
          backgroundColor: data.severity ?? appTheme.unselectedWidgetColor,
        );
  }

  @override
  filledStyle(data) {
    return super.filledStyle(data).copyWith(
          backgroundColor: data.severity ?? appTheme.unselectedWidgetColor,
          borderColor: data.severity,
        );
  }

  @override
  elevatedStyle(data) {
    return super.elevatedStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity ?? colorScheme.onSurface,
          elevationColor: data.severity,
        );
  }

  @override
  outlinedStyle(data) {
    return super.outlinedStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity ?? colorScheme.onSurface,
          borderColor: data.severity,
          borderOpacity: .3,
        );
  }
}
