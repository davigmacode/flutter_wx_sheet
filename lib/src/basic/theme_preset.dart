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
  get animated => baseTheme?.animated ?? super.animated;

  @override
  get overlay => baseTheme?.overlay ?? super.overlay;

  @override
  get feedback => baseTheme?.feedback ?? super.feedback;

  @override
  get disabled => baseTheme?.disabled ?? super.disabled;

  @override
  get mouseCursor => baseTheme?.mouseCursor ?? super.mouseCursor;

  @override
  get leading => baseTheme?.leading ?? super.leading;

  @override
  get trailing => baseTheme?.trailing ?? super.trailing;

  @override
  get style {
    final baseThemeStyle = baseTheme?.style;
    if (baseThemeStyle != null) {
      return baseThemeStyle.merge(super.style);
    }
    return super.style;
  }

  @override
  get styleResolver {
    return (data) {
      final resolvedBase = baseStyle(data);
      final resolvedVariant = variantStyleResolver(data);
      final resolvedSize = sizeStyleResolver(data.effectiveSize);
      return resolvedBase.merge(resolvedVariant).merge(resolvedSize);
    };
  }

  WxSheetStyle baseStyle(WxSheetStyleResolverData data) {
    return baseTheme?.baseStyle(data) ?? const WxSheetStyle();
  }

  WxSheetStyle variantStyleResolver(WxSheetStyleResolverData data) {
    final variant = data.effectiveVariant;
    final severity = data.severity;
    final WxSheetStyle resolvedStyle;
    if (variant == WxSheetVariant.tonal) {
      resolvedStyle = tonalStyle(severity);
    } else if (variant == WxSheetVariant.filled) {
      resolvedStyle = filledStyle(severity);
    } else if (variant == WxSheetVariant.elevated) {
      resolvedStyle = elevatedStyle(severity);
    } else if (variant == WxSheetVariant.outlined) {
      resolvedStyle = outlinedStyle(severity);
    } else if (variant == WxSheetVariant.text) {
      resolvedStyle = textStyle(severity);
    } else {
      resolvedStyle = variantStyle(data);
    }

    final baseThemeStyle = baseTheme?.variantStyleResolver(data);
    if (baseThemeStyle != null) {
      return baseThemeStyle.merge(resolvedStyle);
    }
    return resolvedStyle;
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

  WxSheetStyle variantStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  WxSheetStyle sizeStyleResolver(WxSheetSize? size) {
    final WxSheetStyle resolvedStyle;
    if (size == WxSheetSize.tiny) {
      resolvedStyle = tinyStyle();
    } else if (size == WxSheetSize.small) {
      resolvedStyle = smallStyle();
    } else if (size == WxSheetSize.medium) {
      resolvedStyle = mediumStyle();
    } else if (size == WxSheetSize.large) {
      resolvedStyle = largeStyle();
    } else if (size == WxSheetSize.huge) {
      resolvedStyle = hugeStyle();
    } else {
      resolvedStyle = sizeStyle(size);
    }

    final baseThemeStyle = baseTheme?.sizeStyleResolver(size);
    if (baseThemeStyle != null) {
      return baseThemeStyle.merge(resolvedStyle);
    }
    return resolvedStyle;
  }

  WxSheetStyle tinyStyle() {
    return const WxSheetStyle();
  }

  WxSheetStyle smallStyle() {
    return const WxSheetStyle();
  }

  WxSheetStyle mediumStyle() {
    return const WxSheetStyle();
  }

  WxSheetStyle largeStyle() {
    return const WxSheetStyle();
  }

  WxSheetStyle hugeStyle() {
    return const WxSheetStyle();
  }

  WxSheetStyle sizeStyle(WxSheetSize? size) {
    return const WxSheetStyle();
  }
}
