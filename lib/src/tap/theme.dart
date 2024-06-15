import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_data.dart';

/// A Widget that controls how descendant buttons should look like.
class WxTapSheetTheme extends InheritedTheme {
  /// The properties for descendant [WxButton]s
  final WxTapSheetThemeData data;

  /// Creates a theme that controls
  /// how descendant buttons should look like.
  const WxTapSheetTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// Creates an [WxTapSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxTapSheetTheme], if any.
  ///
  /// The [child] arguments must not be null.
  static Widget merge({
    Key? key,
    Curve? curve,
    Duration? duration,
    WxTapSheetStyle? style,
    WxTapSheetStyleByVariant? variantStyle,
    WxTapSheetStyleByVariant? dangerStyle,
    WxTapSheetStyleByVariant? warningStyle,
    WxTapSheetStyleByVariant? successStyle,
    WxTapSheetStyleByVariant? infoStyle,
    WxTapSheetThemeData? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxTapSheetTheme.of(context);
        return WxTapSheetTheme(
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

  /// The [WxTapSheetTheme] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxButtonThemeData theme = WxButtonTheme.of(context);
  /// ```
  static WxTapSheetThemeData of(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxTapSheetTheme>();
    if (parentTheme != null) return parentTheme.data;

    final globalTheme = Theme.of(context).extension<WxTapSheetThemeData>();
    final defaultTheme = WxTapSheetThemeData.defaults(context);
    return defaultTheme.merge(globalTheme);
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return WxTapSheetTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(WxTapSheetTheme oldWidget) {
    return oldWidget.data != data;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<WxTapSheetThemeData>('data', data));
  }
}
