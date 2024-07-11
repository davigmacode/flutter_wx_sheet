import 'package:flutter/widgets.dart';
import 'package:wx_sheet/src/basic/style.dart';
import 'theme_tap.dart';

@immutable
class WxSheetThemeTapIOS extends WxSheetThemeTap {
  WxSheetThemeTapIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
    super.styleResolver,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        overlayDisabled: true,
        pressedStyle: const WxSheetStyle(opacity: .4),
      );

  @override
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.primary,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.primary,
          backgroundColor: severity ?? colorScheme.primary,
        );
  }

  @override
  filledStyle(severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: severity ?? colorScheme.primary,
        );
  }

  @override
  elevatedStyle(severity) {
    return super.elevatedStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.primary,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  outlinedStyle(severity) {
    return super.outlinedStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.primary,
          backgroundColor: severity ?? colorTransparent,
          borderOpacity: .3,
        );
  }
}
