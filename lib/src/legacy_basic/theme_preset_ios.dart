import 'package:flutter/material.dart';
import 'types.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxSheetThemeIos extends WxSheetThemeData {
  WxSheetThemeIos(
    this.context, [
    WxSheetThemeData? other,
  ])  : appTheme = Theme.of(context),
        super.from(other);

  final BuildContext context;

  final ThemeData appTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get style => WxSheetStyle(
        borderColor: colorScheme.outline,
        elevationColor: appTheme.shadowColor,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: appTheme.unselectedWidgetColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          backgroundColor: appTheme.unselectedWidgetColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: dangerColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: dangerColor,
          backgroundColor: dangerColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          backgroundColor: dangerColor,
          borderColor: dangerColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          elevationColor: dangerColor,
          foregroundColor: dangerColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: dangerColor,
          backgroundColor: colorScheme.surface,
          borderColor: dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: warningColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: warningColor,
          backgroundColor: warningColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          backgroundColor: warningColor,
          borderColor: warningColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          elevationColor: warningColor,
          foregroundColor: warningColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: warningColor,
          backgroundColor: colorScheme.surface,
          borderColor: warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: successColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: successColor,
          backgroundColor: successColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          backgroundColor: successColor,
          borderColor: successColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          elevationColor: successColor,
          foregroundColor: successColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: successColor,
          backgroundColor: colorScheme.surface,
          borderColor: successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: infoColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: infoColor,
          backgroundColor: infoColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          backgroundColor: infoColor,
          borderColor: infoColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          elevationColor: infoColor,
          foregroundColor: infoColor,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: infoColor,
          backgroundColor: colorScheme.surface,
          borderColor: infoColor,
        ),
      }.merge(super.infoStyle);
}
