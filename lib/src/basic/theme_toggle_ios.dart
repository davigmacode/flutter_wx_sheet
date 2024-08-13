import 'package:flutter/widgets.dart';
import 'style.dart';
import 'theme_toggle.dart';

class WxSheetThemeToggleIOS extends WxSheetThemeToggle {
  WxSheetThemeToggleIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });

  @override
  get primaryColor => cupertinoTheme.primaryColor;

  @override
  get overlay => false;

  @override
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          pressedStyle: const WxSheetStyle(opacity: .4),
        );
  }

  @override
  textStyle(data) {
    return super.textStyle(data).copyWith(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
          selectedStyle: WxSheetStyle(
            foregroundColor: data.severity ?? primaryColor,
          ),
        );
  }

  @override
  tonalStyle(data) {
    return super.tonalStyle(data).copyWith(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: appTheme.unselectedWidgetColor,
          selectedStyle: WxSheetStyle(
            foregroundColor: data.severity ?? primaryColor,
            backgroundColor: data.severity ?? primaryColor,
          ),
        );
  }

  @override
  filledStyle(data) {
    return super.filledStyle(data).copyWith(
          backgroundColor: appTheme.unselectedWidgetColor,
          selectedStyle: WxSheetStyle(
            backgroundColor: data.severity ?? primaryColor,
          ),
        );
  }

  @override
  elevatedStyle(data) {
    return super.elevatedStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          selectedStyle: WxSheetStyle(
            elevationColor: data.severity,
            foregroundColor: data.severity ?? primaryColor,
            backgroundColor: colorScheme.surface,
          ),
        );
  }

  @override
  outlinedStyle(data) {
    return super.outlinedStyle(data).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          borderOpacity: .3,
          selectedStyle: WxSheetStyle(
            foregroundColor: data.severity ?? primaryColor,
            borderColor: data.severity ?? primaryColor,
            overlayColor: data.severity ?? primaryColor,
          ),
        );
  }
}
