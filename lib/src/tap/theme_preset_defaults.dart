import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxTapSheetThemeDefaults extends WxTapSheetThemeData {
  WxTapSheetThemeDefaults(
    BuildContext context, [
    super.other,
  ])  : appTheme = Theme.of(context),
        super.from();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  WxTapSheetStyle get style => WxTapSheetStyle(
        variant: WxSheetVariant.text,
        margin: EdgeInsets.zero,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: const WxDrivenTapSheetStyle(
          backgroundOpacity: 0,
          borderStyle: BorderStyle.none,
          disabledStyle: WxTapSheetStyle(
            foregroundAlpha: WxTapSheetStyle.disabledForegroundAlpha,
          ),
        ),
        WxSheetVariant.tonal: const WxDrivenTapSheetStyle(
          backgroundOpacity: .12,
          borderStyle: BorderStyle.none,
          disabledStyle: WxTapSheetStyle(
            foregroundAlpha: WxTapSheetStyle.disabledForegroundAlpha,
            backgroundAlpha: WxTapSheetStyle.disabledBackgroundAlpha,
            borderAlpha: WxTapSheetStyle.disabledBorderAlpha,
          ),
        ),
        WxSheetVariant.filled: const WxDrivenTapSheetStyle(
          elevation: 1,
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
          disabledStyle: WxTapSheetStyle(
            foregroundAlpha: WxTapSheetStyle.disabledForegroundAlpha,
            backgroundAlpha: WxTapSheetStyle.disabledBackgroundAlpha,
            borderAlpha: WxTapSheetStyle.disabledBorderAlpha,
          ),
          hoveredStyle: WxTapSheetStyle(elevation: 2),
          pressedStyle: WxTapSheetStyle(elevation: 1),
        ),
        WxSheetVariant.elevated: const WxDrivenTapSheetStyle(
          elevation: 1,
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
          disabledStyle: WxTapSheetStyle(
            foregroundAlpha: WxTapSheetStyle.disabledForegroundAlpha,
            backgroundAlpha: WxTapSheetStyle.disabledBackgroundAlpha,
            borderAlpha: WxTapSheetStyle.disabledBorderAlpha,
          ),
          hoveredStyle: WxTapSheetStyle(elevation: 3),
          pressedStyle: WxTapSheetStyle(elevation: 1),
        ),
        WxSheetVariant.outlined: const WxDrivenTapSheetStyle(
          backgroundOpacity: 0,
          borderOpacity: 1,
          borderWidth: 1,
          borderStyle: BorderStyle.solid,
          disabledStyle: WxTapSheetStyle(
            foregroundAlpha: WxTapSheetStyle.disabledForegroundAlpha,
            borderAlpha: WxTapSheetStyle.disabledBorderAlpha,
          ),
        ),
      }.merge(super.variantStyle);
}
