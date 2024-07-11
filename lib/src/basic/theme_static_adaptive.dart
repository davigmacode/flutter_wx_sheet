import 'theme_static.dart';
import 'theme_static_m2.dart';
import 'theme_static_m3.dart';
import 'theme_static_ios.dart';

class WxSheetThemeStaticAdaptive extends WxSheetThemeStatic {
  WxSheetThemeStaticAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme {
    WxSheetThemeStatic theme = WxSheetThemeStaticM2(context);
    if (isAndroid && useMaterial3) {
      theme = WxSheetThemeStaticM3(context);
    } else if (isIOS) {
      theme = WxSheetThemeStaticIOS(context);
    }
    return theme;
  }
}
