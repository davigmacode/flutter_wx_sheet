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
