import 'package:flutter/material.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme_preset_base.dart';

@immutable
class WxToggleSheetThemeM2 extends WxToggleSheetThemeBase {
  WxToggleSheetThemeM2(
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
  }) : sheetTheme = WxSheetThemeM2(context);

  final WxSheetThemeData sheetTheme;

  @override
  get style => super.style.copyWith(
        borderColor: colorScheme.onSurface,
      );

  @override
  get variantStyle => super.variantStyle.merge({
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
      });

  @override
  variantStyleByColor(Color color) {
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
