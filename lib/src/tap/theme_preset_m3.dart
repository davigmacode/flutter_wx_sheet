import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

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
        borderColor: colorScheme.outline,
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
      ),
      WxSheetVariant.filled: WxTapSheetStyle(
        foregroundColor: color,
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
