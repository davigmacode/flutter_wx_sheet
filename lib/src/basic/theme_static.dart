import 'package:flutter/widgets.dart';
import 'theme_base.dart';

abstract class WxSheetThemeStatic extends WxSheetThemeBase<WxSheetThemeStatic> {
  @protected
  WxSheetThemeStatic(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get overlay => false;
}
