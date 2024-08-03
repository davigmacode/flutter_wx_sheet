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

  /// Whether the overlay is enabled or not
  final bool overlay;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a
  /// long-press will produce a short vibration, when feedback is enabled.
  ///
  /// See also:
  ///
  ///  * [Feedback] for providing platform-specific feedback to certain actions.
  final bool feedback;

  /// {@macro flutter.widgets.Focus.canRequestFocus}
  final bool focusable;

  /// Whether the descent [WxAnchor] is disabled for interaction.
  final bool disabled;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final MouseCursor? mouseCursor;

  /// Creates a theme data that can be used for [SheetTheme].
  const WxSheetThemeData({
    this.animated = true,
    this.curve = Curves.linear,
    this.duration = const Duration(milliseconds: 200),
    this.style = const WxSheetStyle(),
    this.styleResolver,
    this.overlay = true,
    this.feedback = true,
    this.focusable = true,
    this.disabled = false,
    this.mouseCursor,
  });

  /// Creates a [WxSheetThemeData] from another one that probably null.
  WxSheetThemeData.from([
    WxSheetThemeData<T>? other,
    WxSheetThemeData<T> fallback = const WxSheetThemeData(),
  ])  : animated = other?.animated ?? fallback.animated,
        curve = other?.curve ?? fallback.curve,
        duration = other?.duration ?? fallback.duration,
        style = other?.style ?? fallback.style,
        styleResolver = other?.styleResolver ?? fallback.styleResolver,
        overlay = other?.overlay ?? fallback.overlay,
        feedback = other?.feedback ?? fallback.feedback,
        focusable = other?.focusable ?? fallback.focusable,
        disabled = other?.disabled ?? fallback.disabled,
        mouseCursor = other?.mouseCursor ?? fallback.mouseCursor;

  /// Return [WxSheetStyle] that depends on [variant] and [severity]
  WxSheetStyle resolve({
    WxSheetVariant? variant,
    WxSheetSize? size,
    Color? severity,
  }) {
    final fromResolver = styleResolver?.call(
      variant: variant ?? style.variant,
      size: size ?? style.size,
      severity: severity ?? style.severity,
    );
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
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
  }) {
    return WxSheetThemeData<T>(
      animated: animated ?? this.animated,
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
      style: this.style.merge(style),
      styleResolver: styleResolver ?? this.styleResolver,
      overlay: overlay ?? this.overlay,
      feedback: feedback ?? this.feedback,
      focusable: focusable ?? this.focusable,
      disabled: disabled ?? this.disabled,
      mouseCursor: mouseCursor ?? this.mouseCursor,
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
      overlay: other.overlay,
      feedback: other.feedback,
      focusable: other.focusable,
      disabled: other.disabled,
      mouseCursor: other.mouseCursor,
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
      overlay: lerpBool(overlay, other.overlay, t) ?? overlay,
      feedback: lerpBool(feedback, other.feedback, t) ?? feedback,
      focusable: lerpBool(focusable, other.focusable, t) ?? focusable,
      disabled: lerpBool(disabled, other.disabled, t) ?? disabled,
      mouseCursor: lerpEnum(mouseCursor, other.mouseCursor, t) ?? mouseCursor,
    );
  }

  Map<String, dynamic> toMap() => {
        'animated': animated,
        'curve': curve,
        'duration': duration,
        'style': style,
        'styleResolver': styleResolver,
        'overlay': overlay,
        'feedback': feedback,
        'focusable': focusable,
        'disabled': disabled,
        'mouseCursor': mouseCursor,
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
