import 'package:flutter/widgets.dart';
import 'style.dart';
import 'theme_toggle.dart';

class WxSheetThemeToggleM2 extends WxSheetThemeToggle {
  WxSheetThemeToggleM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
  });

  @override
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderColor: colorScheme.onSurface,
        );
  }

  @override
  textStyle(data) {
    return super.textStyle(data).copyWith(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
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
