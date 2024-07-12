import 'package:flutter/widgets.dart';
import '../basic/main.dart';
import 'theme_data.dart';

abstract class WxTapSheetThemeBase extends WxTapSheetThemeData
    with WxSheetThemePreset<WxTapSheetThemeData> {
  @protected
  WxTapSheetThemeBase(
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

class WxTapSheetThemeAdaptive extends WxTapSheetThemeBase {
  WxTapSheetThemeAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapAdaptive(context);
}

class WxTapSheetThemeM2 extends WxTapSheetThemeBase {
  WxTapSheetThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapM2(context);
}

class WxTapSheetThemeM3 extends WxTapSheetThemeBase {
  WxTapSheetThemeM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapM3(context);
}

class WxTapSheetThemeIOS extends WxTapSheetThemeBase {
  WxTapSheetThemeIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapIOS(context);
}
