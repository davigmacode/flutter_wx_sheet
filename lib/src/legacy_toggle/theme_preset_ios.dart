import 'package:flutter/material.dart';
import 'package:wx_sheet/src/legacy_basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

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
