import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

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
