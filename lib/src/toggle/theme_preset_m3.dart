import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

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
  get style => WxDrivenToggleSheetStyle(
        foregroundColor: colorScheme.onSurface,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: colorScheme.primary,
          borderColor: colorScheme.primary,
        ),
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
