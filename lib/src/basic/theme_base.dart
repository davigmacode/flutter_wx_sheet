import 'package:flutter/material.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style_driven.dart';
import 'style.dart';
import 'types.dart';

abstract class WxSheetThemeBase<T extends WxSheetThemeData<T>>
    extends WxSheetThemeData<T> with WxSheetThemePreset<T> {
  @protected
  WxSheetThemeBase(
    this.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style = const WxDrivenSheetStyle(),
  });

  @override
  final BuildContext context;

  @override
  get variant => WxSheetVariant.text;

  @override
  WxDrivenSheetStyle baseStyle(data) {
    return WxDrivenSheetStyle(
      textAlign: TextAlign.center,
      tileJustify: MainAxisAlignment.spaceBetween,
      tileAlign: CrossAxisAlignment.center,
      adaptiveSpacing: true,
      margin: EdgeInsets.zero,
      border: const RoundedRectangleBorder(),
      clipBehavior: Clip.none,
      elevationColor: colorScheme.shadow,
      borderColor: colorScheme.onSurface,
      overlayColor: colorScheme.onSurface,
      overlayOpacity: 0,
      focusedStyle: const WxSheetStyle(overlayOpacity: 0.15),
      hoveredStyle: const WxSheetStyle(overlayOpacity: 0.05),
      pressedStyle: const WxSheetStyle(overlayOpacity: 0.1),
    );
  }

  @override
  WxDrivenSheetStyle textStyle(data) {
    return WxDrivenSheetStyle(
      backgroundOpacity: 0,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundColor: colorScheme.onSurface,
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
      ),
    );
  }

  @override
  WxDrivenSheetStyle tonalStyle(data) {
    return WxDrivenSheetStyle(
      backgroundOpacity: .12,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundColor: colorScheme.onSurface,
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        backgroundColor: appTheme.unselectedWidgetColor,
        backgroundAlpha: WxSheetStyle.disabledBackgroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
      ),
    );
  }

  @override
  WxDrivenSheetStyle filledStyle(data) {
    return WxDrivenSheetStyle(
      elevation: 0,
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
      adaptiveForegroundColor: true,
      disabledStyle: WxSheetStyle(
        foregroundColor: colorScheme.onSurface,
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        backgroundColor: appTheme.unselectedWidgetColor,
        backgroundAlpha: WxSheetStyle.disabledBackgroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
        elevation: 0,
      ),
      hoveredStyle: const WxSheetStyle(elevation: 1),
      pressedStyle: const WxSheetStyle(elevation: 0),
    );
  }

  @override
  WxDrivenSheetStyle elevatedStyle(data) {
    return WxDrivenSheetStyle(
      elevation: 1,
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
      adaptiveForegroundColor: true,
      disabledStyle: WxSheetStyle(
        foregroundColor: colorScheme.onSurface,
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
        elevation: 1,
      ),
      hoveredStyle: const WxSheetStyle(elevation: 3),
      pressedStyle: const WxSheetStyle(elevation: 1),
    );
  }

  @override
  WxDrivenSheetStyle outlinedStyle(data) {
    return WxDrivenSheetStyle(
      backgroundOpacity: 0,
      borderOpacity: 1,
      borderWidth: 1,
      borderStyle: BorderStyle.solid,
      disabledStyle: WxSheetStyle(
        foregroundColor: colorScheme.onSurface,
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
        borderAlpha: WxSheetStyle.disabledBorderAlpha,
      ),
    );
  }

  @override
  WxDrivenSheetStyle gradientStyle(data) {
    final severity = data.severity ?? colorScheme.primary;
    return WxDrivenSheetStyle(
      foregroundColor: Colors.white,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.lerp(severity, Colors.black, .1)!,
          severity,
          Color.lerp(severity, Colors.white, .2)!,
          Color.lerp(severity, Colors.white, .3)!,
        ],
      ),
      hoveredStyle: WxSheetStyle(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.lerp(severity, Colors.white, .3)!,
            Color.lerp(severity, Colors.white, .2)!,
            severity,
            Color.lerp(severity, Colors.black, .1)!,
          ],
        ),
      ),
      pressedStyle: WxSheetStyle(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.lerp(severity, Colors.black, .1)!,
            severity,
            Color.lerp(severity, Colors.white, .2)!,
            Color.lerp(severity, Colors.white, .3)!,
          ],
        ),
      ),
    );
  }
}
