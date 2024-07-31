import 'package:flutter/material.dart';
import 'theme_base.dart';

abstract class WxSheetThemeToggle extends WxSheetThemeBase<WxSheetThemeToggle> {
  @protected
  WxSheetThemeToggle(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });
}
