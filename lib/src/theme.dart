import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_data.dart';

/// A Widget that controls how descendant [Sheet]s should look like.
class WxSheetTheme extends InheritedTheme {
  /// The properties for descendant [Sheet]s
  final WxSheetThemeData data;

  /// Creates a theme that controls
  /// how descendant [Sheet]s should look like.
  const WxSheetTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  /// Creates an [WxSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxSheetTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge({
    Key? key,
    Curve? curve,
    Duration? duration,
    WxSheetStyle? style,
    WxSheetStyleByVariant? variantStyle,
    WxSheetStyleByVariant? dangerStyle,
    WxSheetStyleByVariant? warningStyle,
    WxSheetStyleByVariant? successStyle,
    WxSheetStyleByVariant? infoStyle,
    WxSheetThemeData? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxSheetTheme.of(context);
        return WxSheetTheme(
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

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// SheetThemeData theme = SheetTheme.of(context);
  /// ```
  static WxSheetThemeData of(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxSheetTheme>();
    if (parentTheme != null) return parentTheme.data;

    final globalTheme = Theme.of(context).extension<WxSheetThemeData>();
    final defaultTheme = WxSheetThemeData.defaults(context);
    return defaultTheme.merge(globalTheme);
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return WxSheetTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(WxSheetTheme oldWidget) {
    return oldWidget.data != data;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<WxSheetThemeData>('data', data));
  }
}
