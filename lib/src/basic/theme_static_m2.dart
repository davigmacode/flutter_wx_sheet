import 'package:flutter/widgets.dart';
import 'theme_static.dart';

class WxSheetThemeStaticM2 extends WxSheetThemeStatic {
  WxSheetThemeStaticM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        borderColor: colorScheme.onSurface,
        elevationColor: colorScheme.shadow,
      );

  @override
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.onSurface,
          backgroundColor: severity ?? appTheme.unselectedWidgetColor,
        );
  }

  @override
  filledStyle(severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: severity ?? appTheme.unselectedWidgetColor,
          borderColor: severity,
        );
  }

  @override
  elevatedStyle(severity) {
    return super.elevatedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity ?? colorScheme.onSurface,
          elevationColor: severity,
        );
  }

  @override
  outlinedStyle(severity) {
    return super.outlinedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity ?? colorScheme.onSurface,
          borderColor: severity,
          borderOpacity: .3,
        );
  }
}
