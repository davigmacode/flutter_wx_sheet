import 'package:flutter/material.dart';
import 'types.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxSheetThemeBase extends WxSheetThemeData {
  @protected
  const WxSheetThemeBase({
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
  }) : super();

  @override
  get style => super.style.copyWith(
        variant: WxSheetVariant.text,
        border: const RoundedRectangleBorder(),
        clipBehavior: Clip.none,
      );

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

  @override
  get dangerStyle => variantStyleByColor(dangerColor).merge(super.dangerStyle);

  @override
  get warningStyle =>
      variantStyleByColor(warningColor).merge(super.warningStyle);

  @override
  get successStyle =>
      variantStyleByColor(successColor).merge(super.successStyle);

  @override
  get infoStyle => variantStyleByColor(infoColor).merge(super.infoStyle);

  WxSheetStyleByVariant variantStyleByColor(Color color) => {};
}
