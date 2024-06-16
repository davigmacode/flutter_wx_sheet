import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxToggleSheetThemeDefaults extends WxToggleSheetThemeData {
  WxToggleSheetThemeDefaults(
    BuildContext context, [
    super.other,
  ])  : appTheme = Theme.of(context),
        super.from();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  WxToggleSheetStyle get style => WxToggleSheetStyle(
        variant: WxSheetVariant.text,
        margin: EdgeInsets.zero,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
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
      }.merge(super.variantStyle);
}

@immutable
class WxToggleSheetThemeM2 extends WxToggleSheetThemeData {
  WxToggleSheetThemeM2(
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
  get style => WxToggleSheetStyle(
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: WxDrivenToggleSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: colorScheme.primary,
            backgroundColor: colorScheme.primary,
          ),
        ),
        WxSheetVariant.tonal: WxDrivenToggleSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: appTheme.unselectedWidgetColor,
          overlayColor: colorScheme.onSurface,
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: colorScheme.primary,
            backgroundColor: colorScheme.primary,
          ),
        ),
        WxSheetVariant.elevated: WxDrivenToggleSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: colorScheme.primary,
            backgroundColor: colorScheme.surface,
          ),
        ),
        WxSheetVariant.filled: WxDrivenToggleSheetStyle(
          backgroundColor: appTheme.unselectedWidgetColor,
          selectedStyle: WxToggleSheetStyle(
            backgroundColor: colorScheme.primary,
          ),
        ),
        WxSheetVariant.outlined: WxDrivenToggleSheetStyle(
          backgroundColor: Colors.transparent,
          foregroundColor: colorScheme.onSurface,
          borderColor: colorScheme.outline,
          overlayColor: colorScheme.onSurface,
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: colorScheme.primary,
            borderColor: colorScheme.primary,
            overlayColor: colorScheme.primary,
          ),
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxSheetVariant.text: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.dangerColor,
            backgroundColor: sheetTheme.dangerColor,
          ),
        ),
        WxSheetVariant.tonal: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.dangerColor,
            backgroundColor: sheetTheme.dangerColor,
          ),
        ),
        WxSheetVariant.elevated: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.dangerColor,
          ),
        ),
        WxSheetVariant.filled: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            backgroundColor: sheetTheme.dangerColor,
          ),
        ),
        WxSheetVariant.outlined: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.dangerColor,
            borderColor: sheetTheme.dangerColor,
            overlayColor: sheetTheme.dangerColor,
          ),
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.warningColor,
            backgroundColor: sheetTheme.warningColor,
          ),
        ),
        WxSheetVariant.tonal: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.warningColor,
            backgroundColor: sheetTheme.warningColor,
          ),
        ),
        WxSheetVariant.elevated: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.warningColor,
          ),
        ),
        WxSheetVariant.filled: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            backgroundColor: sheetTheme.warningColor,
          ),
        ),
        WxSheetVariant.outlined: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.warningColor,
            borderColor: sheetTheme.warningColor,
            overlayColor: sheetTheme.warningColor,
          ),
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.successColor,
            backgroundColor: sheetTheme.successColor,
          ),
        ),
        WxSheetVariant.tonal: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.successColor,
            backgroundColor: sheetTheme.successColor,
          ),
        ),
        WxSheetVariant.elevated: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.successColor,
          ),
        ),
        WxSheetVariant.filled: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            backgroundColor: sheetTheme.successColor,
          ),
        ),
        WxSheetVariant.outlined: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.successColor,
            borderColor: sheetTheme.successColor,
            overlayColor: sheetTheme.successColor,
          ),
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.infoColor,
            backgroundColor: sheetTheme.infoColor,
          ),
        ),
        WxSheetVariant.tonal: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.infoColor,
            backgroundColor: sheetTheme.infoColor,
          ),
        ),
        WxSheetVariant.elevated: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.infoColor,
          ),
        ),
        WxSheetVariant.filled: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            backgroundColor: sheetTheme.infoColor,
          ),
        ),
        WxSheetVariant.outlined: WxDrivenToggleSheetStyle(
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: sheetTheme.infoColor,
            borderColor: sheetTheme.infoColor,
            overlayColor: sheetTheme.infoColor,
          ),
        ),
      }.merge(super.infoStyle);
}

@immutable
class WxToggleSheetThemeM3 extends WxToggleSheetThemeData {
  WxToggleSheetThemeM3(
    BuildContext context, [
    super.other,
  ])  : textTheme = Theme.of(context).textTheme,
        colorScheme = Theme.of(context).colorScheme,
        sheetTheme = WxSheetTheme.of(context),
        super.from();

  final TextTheme textTheme;

  final ColorScheme colorScheme;

  final WxSheetThemeData sheetTheme;

  @override
  get style => WxToggleSheetStyle(
        foregroundColor: colorScheme.primary,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          backgroundColor: colorScheme.surfaceContainerHighest,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}

@immutable
class WxToggleSheetThemeIos extends WxToggleSheetThemeData {
  WxToggleSheetThemeIos(
    BuildContext context, [
    super.other,
  ])  : textTheme = Theme.of(context).textTheme,
        colorScheme = Theme.of(context).colorScheme,
        sheetTheme = WxSheetTheme.of(context),
        super.from();

  final TextTheme textTheme;

  final ColorScheme colorScheme;

  final WxSheetThemeData sheetTheme;

  @override
  get style => WxToggleSheetStyle(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 44.0,
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        foregroundStyle: textTheme.labelLarge?.copyWith(height: 1),
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.primary,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          backgroundColor: colorScheme.primary,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: Colors.transparent,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          backgroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          backgroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
          backgroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          backgroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          backgroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          backgroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}
