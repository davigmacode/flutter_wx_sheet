import 'package:flutter/material.dart';
import 'types.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxSheetThemeM3 extends WxSheetThemeData {
  WxSheetThemeM3(
    BuildContext context, [
    super.other,
  ])  : appTheme = Theme.of(context),
        super.from();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get style => WxSheetStyle(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          backgroundOpacity: .3,
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surfaceContainerHighest,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          backgroundColor: colorScheme.surfaceContainerHighest,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          surfaceTint: colorScheme.surfaceTint,
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
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: dangerColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          foregroundColor: dangerColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          foregroundColor: dangerColor,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: dangerColor,
          borderColor: dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: warningColor,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: warningColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          foregroundColor: warningColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          foregroundColor: warningColor,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: warningColor,
          borderColor: warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: successColor,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: successColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          foregroundColor: successColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          foregroundColor: successColor,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: successColor,
          borderColor: successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxSheetVariant.text: WxSheetStyle(
          foregroundColor: infoColor,
        ),
        WxSheetVariant.tonal: WxSheetStyle(
          foregroundColor: infoColor,
        ),
        WxSheetVariant.filled: WxSheetStyle(
          foregroundColor: infoColor,
        ),
        WxSheetVariant.elevated: WxSheetStyle(
          foregroundColor: infoColor,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: infoColor,
          borderColor: infoColor,
        ),
      }.merge(super.infoStyle);
}
