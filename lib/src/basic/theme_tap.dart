import 'package:flutter/material.dart';
import 'style.dart';
import 'style_driven.dart';
import 'theme_base.dart';

abstract class WxSheetThemeTap extends WxSheetThemeBase<WxSheetThemeTap> {
  @protected
  WxSheetThemeTap(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  Color get colorTransparent => Colors.transparent;

  @override
  WxDrivenSheetStyle get style =>
      WxDrivenSheetStyle.fromAncestor(super.style).copyWith(
        textAlign: TextAlign.center,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        elevationColor: colorScheme.shadow,
        borderColor: colorScheme.onSurface,
      );

  @override
  WxDrivenSheetStyle textStyle(severity) {
    return const WxDrivenSheetStyle(
      backgroundOpacity: 0,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
      ),
    );
  }

  @override
  WxDrivenSheetStyle tonalStyle(severity) {
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
  WxDrivenSheetStyle filledStyle(severity) {
    return const WxDrivenSheetStyle(
      elevation: 0,
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
  WxDrivenSheetStyle elevatedStyle(severity) {
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
  WxDrivenSheetStyle outlinedStyle(severity) {
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
