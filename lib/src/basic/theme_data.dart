import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wx_utils/wx_utils.dart';
import 'style.dart';
import 'types.dart';

/// Defines the visual properties of [Sheet].
///
/// Descendant widgets obtain the current [WxSheetThemeData] object using
/// `SheetTheme.of(context)`. Instances of [WxSheetThemeData]
/// can be customized with [WxSheetThemeData.copyWith] or [WxSheetThemeData.merge].
@immutable
class WxSheetThemeData<T extends WxSheetThemeData<T>> extends ThemeExtension<T>
    with Diagnosticable {
  /// Whether to animate the sheet decoration.
  final bool animated;

  /// The curve to apply when animating the parameters of sheet widget.
  final Curve curve;

  /// The duration over which to animate the parameters of sheet widget.
  final Duration duration;

  /// The [WxSheetStyle] to be applied to the sheet widget
  final WxSheetStyle style;

  /// Defines a function used to resolve
  /// the sheet style based on the variant and severity.
  final WxSheetStyleResolver? styleResolver;

  /// Creates a theme data that can be used for [SheetTheme].
  const WxSheetThemeData({
    this.animated = true,
    this.curve = Curves.linear,
    this.duration = const Duration(milliseconds: 200),
    this.style = const WxSheetStyle(),
    this.styleResolver,
  });

  /// Creates a [WxSheetThemeData] from another one that probably null.
  WxSheetThemeData.from([
    WxSheetThemeData<T>? other,
    WxSheetThemeData<T> fallback = const WxSheetThemeData(),
  ])  : animated = other?.animated ?? fallback.animated,
        curve = other?.curve ?? fallback.curve,
        duration = other?.duration ?? fallback.duration,
        style = other?.style ?? fallback.style,
        styleResolver = other?.styleResolver ?? fallback.styleResolver;

  /// Return [WxSheetStyle] that depends on [variant] and [severity]
  WxSheetStyle resolve(
    WxSheetVariant? variant,
    Color? severity,
  ) {
    variant ??= style.variant;
    severity ??= style.severity;
    final fromResolver = styleResolver?.call(variant, severity);
    return style.merge(fromResolver);
  }

  /// Creates a copy of this [WxSheetThemeData] but with
  /// the given fields replaced with the new values.
  @override
  WxSheetThemeData<T> copyWith({
    bool? animated,
    Curve? curve,
    Duration? duration,
    WxSheetStyle? style,
    WxSheetStyleResolver? styleResolver,
  }) {
    return WxSheetThemeData<T>(
      animated: animated ?? this.animated,
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
      style: this.style.merge(style),
      styleResolver: styleResolver ?? this.styleResolver,
    );
  }

  /// Creates a copy of this [WxSheetThemeData] but with
  /// the given fields replaced with the new values.
  WxSheetThemeData<T> merge(WxSheetThemeData<T>? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      animated: other.animated,
      curve: other.curve,
      duration: other.duration,
      style: other.style,
      styleResolver: other.styleResolver,
    );
  }

  @override
  WxSheetThemeData<T> lerp(WxSheetThemeData<T>? other, double t) {
    if (other is! WxSheetThemeData<T>) return this;
    return WxSheetThemeData<T>(
      animated: lerpBool(animated, other.animated, t) ?? animated,
      curve: lerpEnum(curve, other.curve, t) ?? curve,
      duration: lerpEnum(duration, other.duration, t) ?? duration,
      style: WxSheetStyle.lerp(style, other.style, t) ?? style,
      styleResolver:
          lerpEnum(styleResolver, other.styleResolver, t) ?? styleResolver,
    );
  }

  Map<String, dynamic> toMap() => {
        'animated': animated,
        'curve': curve,
        'duration': duration,
        'style': style,
        'styleResolver': styleResolver,
      };

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is WxSheetThemeData<T> && mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => Object.hashAll(toMap().values);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    toMap().entries.forEach((el) {
      properties.add(DiagnosticsProperty(el.key, el.value, defaultValue: null));
    });
  }
}
