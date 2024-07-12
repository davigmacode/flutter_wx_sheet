import 'package:flutter/widgets.dart';
import 'style.dart';
import 'theme_toggle.dart';

class WxSheetThemeToggleM2 extends WxSheetThemeToggle {
  WxSheetThemeToggleM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        borderColor: colorScheme.onSurface,
      );

  @override
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
          selectedStyle: WxSheetStyle(
            foregroundColor: severity ?? primaryColor,
          ),
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          foregroundColor: colorScheme.onSurface,
          backgroundColor: appTheme.unselectedWidgetColor,
          selectedStyle: WxSheetStyle(
            foregroundColor: severity ?? primaryColor,
            backgroundColor: severity ?? primaryColor,
          ),
        );
  }

  @override
  filledStyle(severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: appTheme.unselectedWidgetColor,
          selectedStyle: WxSheetStyle(
            backgroundColor: severity ?? primaryColor,
          ),
        );
  }

  @override
  elevatedStyle(severity) {
    return super.elevatedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          selectedStyle: WxSheetStyle(
            elevationColor: severity,
            foregroundColor: severity ?? primaryColor,
            backgroundColor: colorScheme.surface,
          ),
        );
  }

  @override
  outlinedStyle(severity) {
    return super.outlinedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          borderOpacity: .3,
          selectedStyle: WxSheetStyle(
            foregroundColor: severity ?? primaryColor,
            borderColor: severity ?? primaryColor,
            overlayColor: severity ?? primaryColor,
          ),
        );
  }
}
