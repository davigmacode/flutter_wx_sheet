import 'package:flutter/material.dart';
import 'types.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxSheetThemeDefaults extends WxSheetThemeData {
  @protected
  WxSheetThemeDefaults(
    BuildContext context, [
    super.other,
  ]) : super.from();

  @override
  get variantStyle => {
        WxSheetVariant.text: const WxSheetStyle(
          backgroundOpacity: 0,
          borderStyle: BorderStyle.none,
        ),
        WxSheetVariant.tonal: const WxSheetStyle(
          backgroundOpacity: .12,
          borderStyle: BorderStyle.none,
        ),
        WxSheetVariant.filled: const WxSheetStyle(
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
        ),
        WxSheetVariant.elevated: const WxSheetStyle(
          elevation: 1,
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
        ),
        WxSheetVariant.outlined: const WxSheetStyle(
          backgroundOpacity: 0,
          borderOpacity: 1,
          borderWidth: 1,
          borderStyle: BorderStyle.solid,
        ),
      }.merge(super.variantStyle);
}

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
