import 'package:flutter/widgets.dart';
import 'theme_preset_base.dart';

@immutable
class WxTapSheetThemeM2 extends WxTapSheetThemeBase {
  WxTapSheetThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.wrapper,
    super.style,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        iconSize: 18.0,
        foregroundSpacing: 8.0,
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
