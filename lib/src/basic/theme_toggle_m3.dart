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
  textStyle(data) {
    return super.textStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          selectedStyle: WxSheetStyle(
            foregroundColor: data.severity,
          ),
        );
  }

  @override
  tonalStyle(data) {
    return super.tonalStyle(data).copyWith(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          selectedStyle: WxSheetStyle(
            foregroundColor: data.severity,
          ),
        );
  }

  @override
  filledStyle(data) {
    return super.filledStyle(data).copyWith(
          backgroundColor: colorScheme.surfaceContainerHighest,
          selectedStyle: WxSheetStyle(
            foregroundColor: data.severity,
          ),
        );
  }

  @override
  elevatedStyle(data) {
    return super.elevatedStyle(data).copyWith(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
          selectedStyle: WxSheetStyle(
            foregroundColor: data.severity,
          ),
        );
  }

  @override
  outlinedStyle(data) {
    return super.outlinedStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          selectedStyle: WxSheetStyle(
            borderColor: data.severity,
            foregroundColor: data.severity,
          ),
        );
  }
}
