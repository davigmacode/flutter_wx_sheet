import 'package:flutter/widgets.dart';
import 'style.dart';
import 'theme_toggle.dart';

class WxSheetThemeToggleM3 extends WxSheetThemeToggle {
  WxSheetThemeToggleM3(
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
          foregroundColor: colorScheme.onSurface,
          borderColor: colorScheme.outline,
          selectedStyle: WxSheetStyle(
            foregroundColor: primaryColor,
            borderColor: primaryColor,
          ),
        );
  }

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
