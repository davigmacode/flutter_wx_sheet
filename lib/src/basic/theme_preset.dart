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
    return ({variant, size, severity}) {
      final resolvedVariant = variantStyle(variant, severity);
      final resolvedSize = sizeStyle(size);
      return resolvedVariant.merge(resolvedSize);
    };
  }

  WxSheetStyle variantStyle(WxSheetVariant? variant, Color? severity) {
    final WxSheetStyle resolvedStyle;
    if (variant == WxSheetVariant.tonal) {
      resolvedStyle = tonalStyle(severity);
    } else if (variant == WxSheetVariant.filled) {
      resolvedStyle = filledStyle(severity);
    } else if (variant == WxSheetVariant.elevated) {
      resolvedStyle = elevatedStyle(severity);
    } else if (variant == WxSheetVariant.outlined) {
      resolvedStyle = outlinedStyle(severity);
    } else if (variant == WxSheetVariant.text || variant == null) {
      resolvedStyle = textStyle(severity);
    } else {
      resolvedStyle = customVariantStyle(variant, severity);
    }

    final baseStyle = baseTheme?.variantStyle(variant, severity);
    if (baseStyle != null) {
      return baseStyle.merge(resolvedStyle);
    }
    return resolvedStyle;
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

  WxSheetStyle customVariantStyle(WxSheetVariant? variant, Color? severity) {
    return baseTheme?.customVariantStyle(variant, severity) ??
        const WxSheetStyle();
  }

  WxSheetStyle sizeStyle(WxSheetSize? size) {
    final WxSheetStyle resolvedStyle;
    switch (size) {
      case WxSheetSize.tiny:
        resolvedStyle = tinyStyle(size);
        break;
      case WxSheetSize.small:
        resolvedStyle = smallStyle(size);
        break;
      case WxSheetSize.medium:
        resolvedStyle = mediumStyle(size);
        break;
      case WxSheetSize.large:
        resolvedStyle = largeStyle(size);
        break;
      case WxSheetSize.huge:
        resolvedStyle = hugeStyle(size);
        break;
      default:
        resolvedStyle = customSizeStyle(size);
    }

    final baseStyle = baseTheme?.sizeStyle(size);
    if (baseStyle != null) {
      return baseStyle.merge(resolvedStyle);
    }
    return resolvedStyle;
  }

  WxSheetStyle tinyStyle(WxSheetSize? size) {
    return baseTheme?.tinyStyle(size) ?? const WxSheetStyle();
  }

  WxSheetStyle smallStyle(WxSheetSize? size) {
    return baseTheme?.smallStyle(size) ?? const WxSheetStyle();
  }

  WxSheetStyle mediumStyle(WxSheetSize? size) {
    return baseTheme?.mediumStyle(size) ?? const WxSheetStyle();
  }

  WxSheetStyle largeStyle(WxSheetSize? size) {
    return baseTheme?.largeStyle(size) ?? const WxSheetStyle();
  }

  WxSheetStyle hugeStyle(WxSheetSize? size) {
    return baseTheme?.hugeStyle(size) ?? const WxSheetStyle();
  }

  WxSheetStyle customSizeStyle(WxSheetSize? size) {
    return baseTheme?.customSizeStyle(size) ?? const WxSheetStyle();
  }
}
