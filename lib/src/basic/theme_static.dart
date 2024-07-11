import 'package:flutter/widgets.dart';
import 'theme_base.dart';
import 'style.dart';

abstract class WxSheetThemeStatic extends WxSheetThemeBase<WxSheetThemeStatic> {
  @protected
  WxSheetThemeStatic(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
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
  textStyle(severity) {
    return const WxSheetStyle(
      backgroundOpacity: 0,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  tonalStyle(severity) {
    return const WxSheetStyle(
      backgroundOpacity: .12,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  filledStyle(severity) {
    return const WxSheetStyle(
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  elevatedStyle(severity) {
    return const WxSheetStyle(
      elevation: 1,
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  outlinedStyle(severity) {
    return const WxSheetStyle(
      backgroundOpacity: 0,
      borderOpacity: 1,
      borderWidth: 1,
      borderStyle: BorderStyle.solid,
    );
  }
}
