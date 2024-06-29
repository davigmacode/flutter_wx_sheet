import 'package:flutter/widgets.dart';
import 'theme_data.dart';
import 'theme_preset_base.dart';
import '../basic/main.dart';

class WxStaticSheetTheme extends WxSheetTheme<WxStaticSheetThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxStaticSheetTheme({
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
    WxSheetBuilder<WxStaticSheetThemeData>? wrapper,
    WxSheetStyle? style,
    WxSheetStyleResolver? styleResolver,
    WxStaticSheetThemeData? data,
    required Widget child,
  }) {
    return WxSheetTheme.merge<WxStaticSheetThemeData>(
      key: key,
      data: data,
      animated: animated,
      curve: curve,
      duration: duration,
      wrapper: wrapper,
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
  static WxStaticSheetThemeData? maybeOf(BuildContext context) {
    final parent = WxSheetTheme.maybeOf<WxStaticSheetThemeData>(context);
    return WxStaticSheetThemeData.from(parent);
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxStaticSheetThemeData of(BuildContext context) {
    final parent = WxStaticSheetTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxStaticSheetThemeBase(context);
  }
}
