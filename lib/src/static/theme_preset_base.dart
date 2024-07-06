import 'package:flutter/material.dart';
import '../basic/main.dart';
import 'theme_data.dart';

@immutable
class WxStaticSheetThemeBase extends WxStaticSheetThemeData {
  @protected
  WxStaticSheetThemeBase(
    BuildContext context, {
    super.animated,
    super.curve,
    super.duration,
    super.wrapper,
    super.style,
  })  : appTheme = Theme.of(context),
        super();

  final ThemeData appTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

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
  get styleResolver {
    return (variant, severity) {
      switch (variant) {
        case WxSheetVariant.tonal:
          return tonalStyle(severity);
        case WxSheetVariant.filled:
          return filledStyle(severity);
        case WxSheetVariant.elevated:
          return elevatedStyle(severity);
        case WxSheetVariant.outlined:
          return outlinedStyle(severity);
        default:
          return textStyle(severity);
      }
    };
  }

  WxSheetStyle textStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: 0,
      borderStyle: BorderStyle.none,
    );
  }

  WxSheetStyle tonalStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: .12,
      borderStyle: BorderStyle.none,
    );
  }

  WxSheetStyle filledStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
    );
  }

  WxSheetStyle elevatedStyle(Color? severity) {
    return const WxSheetStyle(
      elevation: 1,
      backgroundOpacity: 1,
      borderStyle: BorderStyle.none,
    );
  }

  WxSheetStyle outlinedStyle(Color? severity) {
    return const WxSheetStyle(
      backgroundOpacity: 0,
      borderOpacity: 1,
      borderWidth: 1,
      borderStyle: BorderStyle.solid,
    );
  }
}
