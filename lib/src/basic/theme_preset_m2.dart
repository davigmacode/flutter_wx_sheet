import 'package:flutter/material.dart';
import 'types.dart';
import 'style.dart';
import 'theme_preset_base.dart';

@immutable
class WxSheetThemeM2 extends WxSheetThemeBase {
  WxSheetThemeM2(
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
          borderOpacity: .3,
        ),
      }.merge(super.variantStyle);

  @override
  WxSheetStyleByVariant variantStyleByColor(Color color) {
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
