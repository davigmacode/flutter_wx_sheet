import 'package:flutter/widgets.dart';
import '../basic/main.dart';
import 'theme_data.dart';

abstract class WxToggleSheetThemeBase extends WxToggleSheetThemeData
    with WxSheetThemePreset<WxToggleSheetThemeData> {
  @protected
  WxToggleSheetThemeBase(
    this.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;

  @override
  WxDrivenSheetStyle get style => WxDrivenSheetStyle.fromAncestor(super.style);
}

class WxToggleSheetThemeAdaptive extends WxToggleSheetThemeBase {
  WxToggleSheetThemeAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleAdaptive(context);
}

class WxToggleSheetThemeM2 extends WxToggleSheetThemeBase {
  WxToggleSheetThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleM2(context);
}

class WxToggleSheetThemeM3 extends WxToggleSheetThemeBase {
  WxToggleSheetThemeM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleM3(context);
}

class WxToggleSheetThemeIOS extends WxToggleSheetThemeBase {
  WxToggleSheetThemeIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeToggleIOS(context);
}
