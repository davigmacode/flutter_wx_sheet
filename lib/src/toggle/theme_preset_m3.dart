import 'package:flutter/widgets.dart';
import '../basic/main.dart';
import 'theme_preset_base.dart';

@immutable
class WxToggleSheetThemeM3 extends WxToggleSheetThemeBase {
  WxToggleSheetThemeM3(
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
        foregroundColor: colorScheme.onSurface,
        borderColor: colorScheme.outline,
        selectedStyle: WxSheetStyle(
          foregroundColor: colorScheme.primary,
          borderColor: colorScheme.primary,
        ),
      );

  @override
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          selectedStyle: WxSheetStyle(
            foregroundColor: severity,
          ),
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          selectedStyle: WxSheetStyle(
            foregroundColor: severity,
          ),
        );
  }

  @override
  filledStyle(severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: colorScheme.surfaceContainerHighest,
          selectedStyle: WxSheetStyle(
            foregroundColor: severity,
          ),
        );
  }

  @override
  elevatedStyle(severity) {
    return super.elevatedStyle(severity).copyWith(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
          selectedStyle: WxSheetStyle(
            foregroundColor: severity,
          ),
        );
  }

  @override
  outlinedStyle(severity) {
    return super.outlinedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          selectedStyle: WxSheetStyle(
            borderColor: severity,
            foregroundColor: severity,
          ),
        );
  }
}
