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

@immutable
class WxTapSheetThemeM2 extends WxTapSheetThemeData {
  WxTapSheetThemeM2(
    BuildContext context, [
    super.other,
  ])  : sheetTheme = WxSheetTheme.of(context),
        appTheme = Theme.of(context),
        super.from();

  final WxSheetThemeData sheetTheme;

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get variantStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.primary,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: colorScheme.primary,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: Colors.transparent,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          backgroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
          backgroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          backgroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}

@immutable
class WxTapSheetThemeM3 extends WxTapSheetThemeData {
  WxTapSheetThemeM3(
    BuildContext context, [
    super.other,
  ])  : sheetTheme = WxSheetTheme.of(context),
        appTheme = Theme.of(context),
        super.from();

  final WxSheetThemeData sheetTheme;

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get style => WxTapSheetStyle(
        foregroundColor: colorScheme.primary,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: colorScheme.surfaceContainerHighest,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}

@immutable
class WxTapSheetThemeIos extends WxTapSheetThemeData {
  WxTapSheetThemeIos(
    BuildContext context, [
    super.other,
  ])  : sheetTheme = WxSheetTheme.of(context),
        appTheme = Theme.of(context),
        super.from();

  final WxSheetThemeData sheetTheme;

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get variantStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.primary,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: colorScheme.primary,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: Colors.transparent,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          backgroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
          backgroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.tonal: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          backgroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.filled: WxTapSheetStyle(
          backgroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.elevated: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.outlined: WxTapSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}
