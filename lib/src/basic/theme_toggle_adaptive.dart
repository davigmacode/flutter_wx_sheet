import 'theme_toggle.dart';
import 'theme_toggle_m2.dart';
import 'theme_toggle_m3.dart';
import 'theme_toggle_ios.dart';

class WxSheetThemeToggleAdaptive extends WxSheetThemeToggle {
  WxSheetThemeToggleAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme {
    WxSheetThemeToggle theme = WxSheetThemeToggleM2(context);
    if (isAndroid && useMaterial3) {
      theme = WxSheetThemeToggleM3(context);
    } else if (isIOS) {
      theme = WxSheetThemeToggleIOS(context);
    }
    return theme;
  }
}
