import 'package:flutter/material.dart';
import 'theme_base.dart';

abstract class WxSheetThemeTap extends WxSheetThemeBase<WxSheetThemeTap> {
  @protected
  WxSheetThemeTap(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });
}
