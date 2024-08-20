import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'theme_data.dart';
import 'style.dart';
import 'types.dart';

/// A Widget that controls how descendant [WxSheet]s should look like.
class WxSheetTheme<T extends WxSheetThemeData<T>> extends InheritedTheme {
  /// The properties for descendant [WxSheet]s
  final WxSheetThemeData<T> data;

  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxSheetTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// Creates an [WxSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxSheetTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge<T extends WxSheetThemeData<T>>({
    Key? key,
    bool? animated,
    Curve? curve,
    Duration? duration,
    WxSheetVariant? variant,
    WxSheetSize? size,
    Color? severity,
    WxSheetStyle? style,
    WxSheetStyleResolver? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    Widget? leading,
    Widget? trailing,
    WxSheetThemeData<T>? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxSheetTheme.of<T>(context);
        return WxSheetTheme<T>(
          key: key,
          data: parent.merge(data).copyWith(
                animated: animated,
                curve: curve,
                duration: duration,
                variant: variant,
                size: size,
                severity: severity,
                style: style,
                styleResolver: styleResolver,
                overlay: overlay,
                feedback: feedback,
                focusable: focusable,
                disabled: disabled,
                mouseCursor: mouseCursor,
                leading: leading,
                trailing: trailing,
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
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxSheetThemeData<T>? maybeOf<T extends WxSheetThemeData<T>>(
    BuildContext context,
  ) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxSheetTheme<T>>();
    if (parentTheme != null) return parentTheme.data;

    final globalTheme = Theme.of(context).extension<T>();
    return globalTheme;
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxSheetThemeData<T> of<T extends WxSheetThemeData<T>>(
    BuildContext context,
  ) {
    final parentTheme = WxSheetTheme.maybeOf<T>(context);
    assert(parentTheme != null, 'No WxSheetTheme found in context');
    return parentTheme!;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return WxSheetTheme<T>(data: data, child: child);
  }

  @override
  bool updateShouldNotify(WxSheetTheme<T> oldWidget) {
    return oldWidget.data != data;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('data', data));
  }
}
