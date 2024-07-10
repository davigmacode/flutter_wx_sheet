import 'package:flutter/widgets.dart';
import 'theme_preset_base.dart';

@immutable
class WxTapSheetThemeM3 extends WxTapSheetThemeBase {
  WxTapSheetThemeM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        foregroundColor: colorScheme.primary,
        borderColor: colorScheme.outline,
        overlayColor: colorScheme.onSurface,
      );

  @override
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity,
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: severity,
        );
  }

  @override
  filledStyle(severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: severity,
        );
  }

  @override
  elevatedStyle(severity) {
    return super.elevatedStyle(severity).copyWith(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
          foregroundColor: severity,
        );
  }

  @override
  outlinedStyle(severity) {
    return super.outlinedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity,
          borderColor: severity,
        );
  }
}
