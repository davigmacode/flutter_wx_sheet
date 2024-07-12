import 'package:flutter/widgets.dart';
import '../basic/main.dart';
import 'theme_data.dart';

abstract class WxStaticSheetThemeBase extends WxStaticSheetThemeData
    with WxSheetThemePreset<WxStaticSheetThemeData> {
  @protected
  WxStaticSheetThemeBase(
    this.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;
}

class WxStaticSheetThemeAdaptive extends WxStaticSheetThemeBase {
  WxStaticSheetThemeAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticAdaptive(context);
}

class WxStaticSheetThemeM2 extends WxStaticSheetThemeBase {
  WxStaticSheetThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticM2(context);
}

class WxStaticSheetThemeM3 extends WxStaticSheetThemeBase {
  WxStaticSheetThemeM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticM3(context);
}

class WxStaticSheetThemeIOS extends WxStaticSheetThemeBase {
  WxStaticSheetThemeIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticIOS(context);
}
