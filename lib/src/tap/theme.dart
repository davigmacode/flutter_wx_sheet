import 'package:flutter/widgets.dart';
import 'theme_data.dart';
import 'theme_preset_base.dart';
import '../basic/main.dart';

class WxTapSheetTheme extends WxSheetTheme<WxTapSheetThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxTapSheetTheme({
    super.key,
    required super.data,
    required super.child,
  });

  /// Creates an [WxSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxSheetTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge({
    Key? key,
    bool? animated,
    Curve? curve,
    Duration? duration,
    WxSheetStyle? style,
    WxSheetStyleResolver? styleResolver,
    WxTapSheetThemeData? data,
    required Widget child,
  }) {
    return WxSheetTheme.merge<WxTapSheetThemeData>(
      key: key,
      data: data,
      animated: animated,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
      child: child,
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
  static WxTapSheetThemeData? maybeOf(BuildContext context) {
    final parent = WxSheetTheme.maybeOf<WxTapSheetThemeData>(context);
    return WxTapSheetThemeData.from(parent);
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxTapSheetThemeData of(BuildContext context) {
    final parent = WxTapSheetTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxTapSheetThemeBase(context);
  }
}
