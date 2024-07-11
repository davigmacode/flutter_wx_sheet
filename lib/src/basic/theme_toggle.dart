import 'package:flutter/material.dart';
import 'style.dart';
import 'style_driven.dart';
import 'theme_preset.dart';

@immutable
abstract class WxSheetThemeToggle
    extends WxSheetThemePreset<WxSheetThemeToggle> {
  @protected
  WxSheetThemeToggle(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
    super.styleResolver,
  });

  @override
  WxDrivenSheetStyle get style =>
      WxDrivenSheetStyle.fromAncestor(super.style).copyWith(
        textAlign: TextAlign.center,
        tileJustify: MainAxisAlignment.center,
        tileAlign: CrossAxisAlignment.center,
        adaptiveSpacing: true,
        border: const RoundedRectangleBorder(),
        clipBehavior: Clip.antiAlias,
        elevationColor: colorScheme.shadow,
        overlayColor: colorScheme.onSurface,
      );

  @override
  WxDrivenSheetStyle textStyle(Color? severity) {
    return const WxDrivenSheetStyle(
      backgroundOpacity: 0,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
      ),
    );
  }

  @override
  WxDrivenSheetStyle tonalStyle(Color? severity) {
    return const WxDrivenSheetStyle(
      backgroundOpacity: .12,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        backgroundAlpha: WxSheetStyle.disabledBackgroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
      ),
    );
  }

  @override
  WxDrivenSheetStyle filledStyle(Color? severity) {
    return const WxDrivenSheetStyle(
      elevation: 1,
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        backgroundAlpha: WxSheetStyle.disabledBackgroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
      ),
      hoveredStyle: WxSheetStyle(elevation: 2),
      pressedStyle: WxSheetStyle(elevation: 1),
    );
  }

  @override
  WxDrivenSheetStyle elevatedStyle(Color? severity) {
    return const WxDrivenSheetStyle(
      elevation: 1,
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        backgroundAlpha: WxSheetStyle.disabledBackgroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
      ),
      hoveredStyle: WxSheetStyle(elevation: 3),
      pressedStyle: WxSheetStyle(elevation: 1),
    );
  }

  @override
  WxDrivenSheetStyle outlinedStyle(Color? severity) {
    return const WxDrivenSheetStyle(
      backgroundOpacity: 0,
      borderOpacity: 1,
      borderWidth: 1,
      borderStyle: BorderStyle.solid,
      disabledStyle: WxSheetStyle(
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
      ),
    );
  }
}
