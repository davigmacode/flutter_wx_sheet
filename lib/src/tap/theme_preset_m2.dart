import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

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
  get style => WxTapSheetStyle(
        borderColor: colorScheme.onSurface,
      ).merge(super.style);

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
          borderOpacity: .3,
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

  Map<WxSheetVariant, WxTapSheetStyle?> severityStylesByColor(Color color) {
    return {
      WxSheetVariant.text: WxTapSheetStyle(
        foregroundColor: color,
      ),
      WxSheetVariant.tonal: WxTapSheetStyle(
        foregroundColor: color,
        backgroundColor: color,
      ),
      WxSheetVariant.filled: WxTapSheetStyle(
        backgroundColor: color,
      ),
      WxSheetVariant.elevated: WxTapSheetStyle(
        foregroundColor: color,
      ),
      WxSheetVariant.outlined: WxTapSheetStyle(
        foregroundColor: color,
        borderColor: color,
      ),
    };
  }
}
