import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_data.dart';
import 'theme_preset.dart';

/// A Widget that controls how descendant buttons should look like.
class WxToggleSheetTheme extends InheritedTheme {
  /// The properties for descendant [WxButton]s
  final WxToggleSheetThemeData data;

  /// Creates a theme that controls
  /// how descendant buttons should look like.
  const WxToggleSheetTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// Creates an [WxToggleSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxToggleSheetTheme], if any.
  ///
  /// The [child] arguments must not be null.
  static Widget merge({
    Key? key,
    Curve? curve,
    Duration? duration,
    WxToggleSheetStyle? style,
    WxToggleSheetStyleByVariant? variantStyle,
    WxToggleSheetStyleByVariant? dangerStyle,
    WxToggleSheetStyleByVariant? warningStyle,
    WxToggleSheetStyleByVariant? successStyle,
    WxToggleSheetStyleByVariant? infoStyle,
    WxToggleSheetThemeData? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxToggleSheetTheme.of(context);
        return WxToggleSheetTheme(
          key: key,
          data: parent.merge(data).copyWith(
                curve: curve,
                duration: duration,
                style: style,
                variantStyle: variantStyle,
                dangerStyle: dangerStyle,
                warningStyle: warningStyle,
                successStyle: successStyle,
                infoStyle: infoStyle,
              ),
          child: child,
        );
      },
    );
  }

  /// The [WxToggleSheetTheme] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxButtonThemeData theme = WxButtonTheme.of(context);
  /// ```
  static WxToggleSheetThemeData of(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxToggleSheetTheme>();
    if (parentTheme != null) return parentTheme.data;

    final globalTheme = Theme.of(context).extension<WxToggleSheetThemeData>();
    final defaultTheme = WxToggleSheetThemeBase(context);
    return defaultTheme.merge(globalTheme);
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return WxToggleSheetTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(WxToggleSheetTheme oldWidget) {
    return oldWidget.data != data;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<WxToggleSheetThemeData>('data', data));
  }
}
