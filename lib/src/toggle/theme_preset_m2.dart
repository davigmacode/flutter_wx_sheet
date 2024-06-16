import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

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
