import 'package:flutter/material.dart';
import '../basic/main.dart';
import 'theme_data.dart';

@immutable
class WxToggleSheetThemeBase extends WxToggleSheetThemeData {
  @protected
  WxToggleSheetThemeBase(
    BuildContext context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  })  : appTheme = Theme.of(context),
        super();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

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
  get styleResolver {
    return (variant, severity) {
      switch (variant) {
        case WxSheetVariant.tonal:
          return tonalStyle(severity);
        case WxSheetVariant.filled:
          return filledStyle(severity);
        case WxSheetVariant.elevated:
          return elevatedStyle(severity);
        case WxSheetVariant.outlined:
          return outlinedStyle(severity);
        default:
          return textStyle(severity);
      }
    };
  }

  WxDrivenSheetStyle textStyle(Color? severity) {
    return const WxDrivenSheetStyle(
      backgroundOpacity: 0,
      borderStyle: BorderStyle.none,
      disabledStyle: WxSheetStyle(
        foregroundAlpha: WxSheetStyle.disabledForegroundAlpha,
      ),
    );
  }

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
