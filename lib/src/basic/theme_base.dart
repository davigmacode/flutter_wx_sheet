import 'package:flutter/material.dart';
import 'theme_data.dart';
import 'theme_preset.dart';

abstract class WxSheetThemeBase<T extends WxSheetThemeData<T>>
    extends WxSheetThemeData<T> with WxSheetThemePreset<T> {
  @protected
  WxSheetThemeBase(
    this.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;
}
