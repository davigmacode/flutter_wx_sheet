import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'theme_data.dart';
import 'types.dart';
import 'style.dart';

mixin WxSheetThemePreset<T extends WxSheetThemeData<T>> on WxSheetThemeData<T> {
  BuildContext get context;

  ThemeData? _appTheme;
  ThemeData get appTheme => _appTheme ??= Theme.of(context);

  CupertinoThemeData? _cupertinoTheme;
  CupertinoThemeData get cupertinoTheme =>
      _cupertinoTheme ??= CupertinoTheme.of(context);

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  Color get primaryColor => colorScheme.primary;

  Color get transparentColor => Colors.transparent;

  TargetPlatform get platform => appTheme.platform;

  bool get isAndroid => platform == TargetPlatform.android;

  bool get isIOS => platform == TargetPlatform.iOS;

  bool get isMacOS => platform == TargetPlatform.macOS;

  bool get isWindows => platform == TargetPlatform.windows;

  bool get isLinux => platform == TargetPlatform.linux;

  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  bool get useMaterial3 => appTheme.useMaterial3;

  WxSheetThemePreset<dynamic>? get baseTheme => null;

  @override
  get style {
    final baseStyle = baseTheme?.style;
    if (baseStyle != null) {
      return baseStyle.merge(super.style);
    }
    return super.style;
  }

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
        case WxSheetVariant.text:
        case null:
          return textStyle(severity);
        default:
          return customStyle(variant, severity);
      }
    };
  }

  WxSheetStyle textStyle(Color? severity) {
    return baseTheme?.textStyle(severity) ?? const WxSheetStyle();
  }

  WxSheetStyle tonalStyle(Color? severity) {
    return baseTheme?.tonalStyle(severity) ?? const WxSheetStyle();
  }

  WxSheetStyle elevatedStyle(Color? severity) {
    return baseTheme?.elevatedStyle(severity) ?? const WxSheetStyle();
  }

  WxSheetStyle filledStyle(Color? severity) {
    return baseTheme?.filledStyle(severity) ?? const WxSheetStyle();
  }

  WxSheetStyle outlinedStyle(Color? severity) {
    return baseTheme?.outlinedStyle(severity) ?? const WxSheetStyle();
  }

  WxSheetStyle customStyle(WxSheetVariant? variant, Color? severity) {
    return baseTheme?.customStyle(variant, severity) ?? const WxSheetStyle();
  }
}
