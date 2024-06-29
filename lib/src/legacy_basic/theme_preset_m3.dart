import 'package:flutter/material.dart';
import 'types.dart';
import 'style.dart';
import 'theme_preset_base.dart';

@immutable
class WxSheetThemeM3 extends WxSheetThemeBase {
  WxSheetThemeM3(
    BuildContext context, {
    super.animated,
    super.curve,
    super.duration,
    super.wrapper,
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
  })  : appTheme = Theme.of(context),
        super();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        borderColor: colorScheme.outline,
        elevationColor: colorScheme.shadow,
      );

  @override
  get variantStyle => super.variantStyle.merge({
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
      });

  @override
  WxSheetStyleByVariant variantStyleByColor(Color color) {
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
