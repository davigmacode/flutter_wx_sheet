import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_preset_base.dart';

@immutable
class WxToggleSheetThemeM3 extends WxToggleSheetThemeBase {
  WxToggleSheetThemeM3(
    super.context, {
    super.curve,
    super.duration,
    super.style,
    super.variantStyle,
    super.dangerStyle,
    super.warningStyle,
    super.successStyle,
    super.infoStyle,
    super.dangerColor,
    super.warningColor,
    super.successColor,
    super.infoColor,
  }) : sheetTheme = WxSheetThemeM3(context);

  final WxSheetThemeData sheetTheme;

  @override
  get style => super.style.copyWith(
        foregroundColor: colorScheme.onSurface,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
        selectedStyle: WxToggleSheetStyle(
          foregroundColor: colorScheme.primary,
          borderColor: colorScheme.primary,
        ),
      );

  @override
  get variantStyle => super.variantStyle.merge({
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
      });

  @override
  variantStyleByColor(Color color) {
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
