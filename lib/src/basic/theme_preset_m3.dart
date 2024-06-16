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
  get dangerStyle =>
      severityStylesByColor(dangerColor).merge(super.dangerStyle);

  @override
  get warningStyle =>
      severityStylesByColor(warningColor).merge(super.warningStyle);

  @override
  get successStyle =>
      severityStylesByColor(successColor).merge(super.successStyle);

  @override
  get infoStyle => severityStylesByColor(infoColor).merge(super.infoStyle);

  Map<WxSheetVariant, WxSheetStyle?> severityStylesByColor(Color color) {
    return {
      WxSheetVariant.text: WxSheetStyle(
        foregroundColor: color,
      ),
      WxSheetVariant.tonal: WxSheetStyle(
        foregroundColor: color,
      ),
      WxSheetVariant.filled: WxSheetStyle(
        foregroundColor: color,
      ),
      WxSheetVariant.elevated: WxSheetStyle(
        foregroundColor: color,
      ),
      WxSheetVariant.outlined: WxSheetStyle(
        foregroundColor: color,
        borderColor: color,
      ),
    };
  }
}
