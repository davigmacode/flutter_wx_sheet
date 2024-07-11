import 'package:flutter/material.dart';
import 'theme_data.dart';
import 'types.dart';
import 'style.dart';

mixin WxSheetThemePreset<T extends WxSheetThemeData<T>> on WxSheetThemeData<T> {
  BuildContext get context;

  ThemeData? _appTheme;
  ThemeData get appTheme => _appTheme ??= Theme.of(context);

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  TargetPlatform get platform => appTheme.platform;

  bool get isAndroid => platform == TargetPlatform.android;

  bool get isIOS => platform == TargetPlatform.iOS;

  bool get isMacOS => platform == TargetPlatform.macOS;

  bool get isWindows => platform == TargetPlatform.windows;

  bool get isLinux => platform == TargetPlatform.linux;

  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  bool get useMaterial3 => appTheme.useMaterial3;

  WxSheetThemeData<dynamic>? get baseTheme => null;

  @override
  get styleResolver {
    return (variant, severity) {
      final WxSheetStyle resolvedStyle;
      switch (variant) {
        case WxSheetVariant.tonal:
          resolvedStyle = tonalStyle(severity);
          break;
        case WxSheetVariant.filled:
          resolvedStyle = filledStyle(severity);
          break;
        case WxSheetVariant.elevated:
          resolvedStyle = elevatedStyle(severity);
          break;
        case WxSheetVariant.outlined:
          resolvedStyle = outlinedStyle(severity);
          break;
        case WxSheetVariant.text:
        case null:
          resolvedStyle = textStyle(severity);
          break;
        default:
          resolvedStyle = customStyle(variant, severity);
      }

      final baseStyle = baseTheme?.resolve(variant, severity);
      if (baseStyle != null) {
        return baseStyle.merge(resolvedStyle);
      }

      return resolvedStyle;
    };
  }

  WxSheetStyle textStyle(Color? severity) {
    return const WxSheetStyle();
  }

  WxSheetStyle tonalStyle(Color? severity) {
    return const WxSheetStyle();
  }

  WxSheetStyle elevatedStyle(Color? severity) {
    return const WxSheetStyle();
  }

  WxSheetStyle filledStyle(Color? severity) {
    return const WxSheetStyle();
  }

  WxSheetStyle outlinedStyle(Color? severity) {
    return const WxSheetStyle();
  }

  WxSheetStyle customStyle(WxSheetVariant? variant, Color? severity) {
    return const WxSheetStyle();
  }
}
