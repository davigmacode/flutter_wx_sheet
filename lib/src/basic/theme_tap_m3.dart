import 'package:flutter/widgets.dart';
import 'theme_tap.dart';

class WxSheetThemeTapM3 extends WxSheetThemeTap {
  WxSheetThemeTapM3(
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
          foregroundColor: primaryColor,
          borderColor: colorScheme.outline,
          overlayColor: colorScheme.onSurface,
        );
  }

  @override
  textStyle(data) {
    return super.textStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity,
          titleColor: data.severity,
        );
  }

  @override
  tonalStyle(data) {
    return super.tonalStyle(data).copyWith(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: data.severity,
          titleColor: data.severity,
        );
  }

  @override
  filledStyle(data) {
    return super.filledStyle(data).copyWith(
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: data.severity,
          titleColor: data.severity,
        );
  }

  @override
  elevatedStyle(data) {
    return super.elevatedStyle(data).copyWith(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity,
          titleColor: data.severity,
        );
  }

  @override
  outlinedStyle(data) {
    return super.outlinedStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: data.severity,
          borderColor: data.severity,
          titleColor: data.severity,
        );
  }
}
