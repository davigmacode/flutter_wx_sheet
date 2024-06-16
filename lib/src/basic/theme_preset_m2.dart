import 'package:flutter/material.dart';
import 'types.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxSheetThemeM2 extends WxSheetThemeData {
  WxSheetThemeM2(
    BuildContext context, [
    super.other,
  ])  : appTheme = Theme.of(context),
        super.from();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get style => WxSheetStyle(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        borderColor: colorScheme.onSurface,
        elevationColor: colorScheme.shadow,
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
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxSheetStyle(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
          borderOpacity: .5,
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
        backgroundColor: colorScheme.surface,
      ),
      WxSheetVariant.tonal: WxSheetStyle(
        foregroundColor: color,
        backgroundColor: color,
      ),
      WxSheetVariant.filled: WxSheetStyle(
        backgroundColor: color,
        borderColor: color,
      ),
      WxSheetVariant.elevated: WxSheetStyle(
        elevationColor: color,
        foregroundColor: color,
        backgroundColor: colorScheme.surface,
      ),
      WxSheetVariant.outlined: WxSheetStyle(
        foregroundColor: color,
        backgroundColor: colorScheme.surface,
        borderColor: color,
      ),
    };
  }
}
