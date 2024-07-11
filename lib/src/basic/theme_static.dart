import 'package:flutter/material.dart';
import 'theme_preset.dart';
import 'style.dart';

@immutable
abstract class WxSheetThemeStatic
    extends WxSheetThemePreset<WxSheetThemeStatic> {
  @protected
  WxSheetThemeStatic(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.style,
    super.styleResolver,
  });

  @override
  get style => super.style.copyWith(
        textAlign: TextAlign.center,
        tileJustify: MainAxisAlignment.center,
        tileAlign: CrossAxisAlignment.center,
        adaptiveSpacing: true,
        border: const RoundedRectangleBorder(),
        clipBehavior: Clip.none,
      );

  @override
  textStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: 0,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  tonalStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: .12,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  filledStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  elevatedStyle(Color? severity) {
    return const WxSheetStyle(
      elevation: 1,
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  outlinedStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: 0,
      borderOpacity: 1,
      borderWidth: 1,
      borderStyle: BorderStyle.solid,
    );
  }
}
