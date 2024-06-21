import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxToggleSheetThemeM3 extends WxToggleSheetThemeData {
  WxToggleSheetThemeM3(
    BuildContext context, [
    super.other,
  ])  : textTheme = Theme.of(context).textTheme,
        colorScheme = Theme.of(context).colorScheme,
        sheetTheme = WxSheetThemeM3(context),
        super.from();

  final TextTheme textTheme;

  final ColorScheme colorScheme;

  final WxSheetThemeData sheetTheme;

  @override
  get style => WxDrivenToggleSheetStyle(
        foregroundColor: colorScheme.onSurface,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: colorScheme.primary,
          borderColor: colorScheme.primary,
        ),
      ).merge(super.style);

  @override
  get variantStyle => {
        WxSheetVariant.text: WxToggleSheetStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.tonal: WxToggleSheetStyle(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceContainerHighest,
          overlayColor: colorScheme.onSurface,
        ),
        WxSheetVariant.filled: WxToggleSheetStyle(
          backgroundColor: colorScheme.surfaceContainerHighest,
        ),
        WxSheetVariant.elevated: WxToggleSheetStyle(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
        ),
        WxSheetVariant.outlined: WxToggleSheetStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
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

  Map<WxSheetVariant, WxToggleSheetStyle?> severityStylesByColor(Color color) {
    return {
      WxSheetVariant.text: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
        ),
      ),
      WxSheetVariant.tonal: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
        ),
      ),
      WxSheetVariant.filled: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
        ),
      ),
      WxSheetVariant.elevated: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
        ),
      ),
      WxSheetVariant.outlined: WxDrivenToggleSheetStyle(
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: color,
          borderColor: color,
        ),
      ),
    };
  }
}
