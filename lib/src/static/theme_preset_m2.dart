import 'package:flutter/widgets.dart';
import 'theme_preset_base.dart';

@immutable
class WxStaticSheetThemeM2 extends WxStaticSheetThemeBase {
  WxStaticSheetThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.wrapper,
    super.style,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
