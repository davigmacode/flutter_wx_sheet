import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_preset_base.dart';

@immutable
class WxSheetThemeM3<T extends WxSheetThemeBase<T>>
    extends WxSheetThemeBase<T> {
  WxSheetThemeM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.wrapper,
    super.style,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      );

  @override
  WxSheetStyle textStyle(Color? severity) {
    return super.textStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity ?? colorScheme.onSurface,
        );
  }

  @override
  WxSheetStyle tonalStyle(Color? severity) {
    return super.tonalStyle(severity).copyWith(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: severity ?? colorScheme.onSurface,
        );
  }

  @override
  WxSheetStyle filledStyle(Color? severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: severity,
        );
  }

  @override
  WxSheetStyle elevatedStyle(Color? severity) {
    return super.elevatedStyle(severity).copyWith(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
          foregroundColor: severity,
        );
  }

  @override
  WxSheetStyle outlinedStyle(Color? severity) {
    return super.outlinedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity ?? colorScheme.onSurface,
          borderColor: severity,
        );
  }
}
