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
        borderColor: colorScheme.onSurface,
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
          borderOpacity: .3,
          backgroundColor: Colors.transparent,
          foregroundColor: colorScheme.onSurface,
          overlayColor: colorScheme.onSurface,
          selectedStyle: WxToggleSheetStyle(
            foregroundColor: colorScheme.primary,
            borderColor: colorScheme.primary,
            overlayColor: colorScheme.primary,
          ),
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle =>
      severityStylesByColor(sheetTheme.dangerColor).merge(super.dangerStyle);

  @override
  get warningStyle =>
      severityStylesByColor(sheetTheme.warningColor).merge(super.warningStyle);

  @override
  get successStyle =>
      severityStylesByColor(sheetTheme.successColor).merge(super.successStyle);

  @override
  get infoStyle =>
      severityStylesByColor(sheetTheme.infoColor).merge(super.infoStyle);

  Map<WxSheetVariant, WxToggleSheetStyle?> severityStylesByColor(Color color) {
    return {
      WxSheetVariant.text: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
          backgroundColor: color,
        ),
      ),
      WxSheetVariant.tonal: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
          backgroundColor: color,
        ),
      ),
      WxSheetVariant.elevated: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
        ),
      ),
      WxSheetVariant.filled: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          backgroundColor: color,
        ),
      ),
      WxSheetVariant.outlined: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
          borderColor: color,
          overlayColor: color,
        ),
      ),
    };
  }
}
