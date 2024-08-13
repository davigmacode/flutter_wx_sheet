import 'package:flutter/widgets.dart';
import 'theme_static.dart';

class WxSheetThemeStaticM3 extends WxSheetThemeStatic {
  WxSheetThemeStaticM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });

  @override
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          borderColor: colorScheme.outline,
          elevationColor: colorScheme.shadow,
        );
  }

  @override
  textStyle(data) {
    return super.textStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity ?? colorScheme.onSurface,
        );
  }

  @override
  tonalStyle(data) {
    return super.tonalStyle(data).copyWith(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: data.severity ?? colorScheme.onSurface,
        );
  }

  @override
  filledStyle(data) {
    return super.filledStyle(data).copyWith(
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: data.severity,
        );
  }

  @override
  elevatedStyle(data) {
    return super.elevatedStyle(data).copyWith(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity,
        );
  }

  @override
  outlinedStyle(data) {
    return super.outlinedStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity ?? colorScheme.onSurface,
          borderColor: data.severity,
        );
  }
}
