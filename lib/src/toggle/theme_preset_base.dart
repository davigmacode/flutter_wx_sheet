import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxToggleSheetThemeBase extends WxToggleSheetThemeData {
  WxToggleSheetThemeBase(
    BuildContext context, {
    super.curve,
    super.duration,
    super.style,
    super.variantStyle,
    super.dangerStyle,
    super.warningStyle,
    super.successStyle,
    super.infoStyle,
    super.dangerColor,
    super.warningColor,
    super.successColor,
    super.infoColor,
  })  : appTheme = Theme.of(context),
        super();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get style => super.style.copyWith(
        variant: WxSheetVariant.text,
        margin: EdgeInsets.zero,
        elevationColor: colorScheme.shadow,
      );

  @override
  get variantStyle => super.variantStyle.merge({
        WxSheetVariant.text: const WxDrivenToggleSheetStyle(
          backgroundOpacity: 0,
          borderStyle: BorderStyle.none,
          disabledStyle: WxToggleSheetStyle(
            foregroundAlpha: WxToggleSheetStyle.disabledForegroundAlpha,
          ),
        ),
        WxSheetVariant.tonal: const WxDrivenToggleSheetStyle(
          backgroundOpacity: .12,
          borderStyle: BorderStyle.none,
          disabledStyle: WxToggleSheetStyle(
            foregroundAlpha: WxToggleSheetStyle.disabledForegroundAlpha,
            backgroundAlpha: WxToggleSheetStyle.disabledBackgroundAlpha,
            borderAlpha: WxToggleSheetStyle.disabledBorderAlpha,
          ),
        ),
        WxSheetVariant.filled: const WxDrivenToggleSheetStyle(
          elevation: 1,
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
          disabledStyle: WxToggleSheetStyle(
            foregroundAlpha: WxToggleSheetStyle.disabledForegroundAlpha,
            backgroundAlpha: WxToggleSheetStyle.disabledBackgroundAlpha,
            borderAlpha: WxToggleSheetStyle.disabledBorderAlpha,
          ),
          hoveredStyle: WxToggleSheetStyle(elevation: 2),
          pressedStyle: WxToggleSheetStyle(elevation: 1),
        ),
        WxSheetVariant.elevated: const WxDrivenToggleSheetStyle(
          elevation: 1,
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
          disabledStyle: WxToggleSheetStyle(
            foregroundAlpha: WxToggleSheetStyle.disabledForegroundAlpha,
            backgroundAlpha: WxToggleSheetStyle.disabledBackgroundAlpha,
            borderAlpha: WxToggleSheetStyle.disabledBorderAlpha,
          ),
          hoveredStyle: WxToggleSheetStyle(elevation: 3),
          pressedStyle: WxToggleSheetStyle(elevation: 1),
        ),
        WxSheetVariant.outlined: const WxDrivenToggleSheetStyle(
          backgroundOpacity: 0,
          borderOpacity: 1,
          borderWidth: 1,
          borderStyle: BorderStyle.solid,
          disabledStyle: WxToggleSheetStyle(
            foregroundAlpha: WxToggleSheetStyle.disabledForegroundAlpha,
            borderAlpha: WxToggleSheetStyle.disabledBorderAlpha,
          ),
        ),
      });
}
