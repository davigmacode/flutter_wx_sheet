import 'theme_tap.dart';
import 'theme_tap_m2.dart';
import 'theme_tap_m3.dart';
import 'theme_tap_ios.dart';

class WxSheetThemeTapAdaptive extends WxSheetThemeTap {
  WxSheetThemeTapAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme {
    WxSheetThemeTap theme = WxSheetThemeTapM2(context);
    if (isAndroid && useMaterial3) {
      theme = WxSheetThemeTapM3(context);
    } else if (isIOS) {
      theme = WxSheetThemeTapIOS(context);
    }
    return theme;
  }
}
