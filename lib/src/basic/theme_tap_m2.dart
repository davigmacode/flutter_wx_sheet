import 'package:flutter/widgets.dart';
import 'theme_tap.dart';

class WxSheetThemeTapM2 extends WxSheetThemeTap {
  WxSheetThemeTapM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      );

  @override
  textStyle(severity) {
    return super.textStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.primary,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        );
  }

  @override
  tonalStyle(severity) {
    return super.tonalStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.primary,
          backgroundColor: severity ?? colorScheme.primary,
          overlayColor: colorScheme.onSurface,
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
          overlayColor: colorScheme.onSurface,
          borderOpacity: .3,
        );
  }
}
