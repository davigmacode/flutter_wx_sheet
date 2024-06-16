import 'package:flutter/widgets.dart';
import 'theme_data.dart';

typedef WxSheetBuilder = Widget? Function(
  BuildContext context,
  WxSheetThemeData theme,
  Widget? child,
);

abstract class WxSheetWrapper {
  static const WxSheetBuilder fallback = _fallback;
  static Widget? _fallback(
    BuildContext context,
    WxSheetThemeData theme,
    Widget? child,
  ) =>
      child;
}
