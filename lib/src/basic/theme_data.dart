import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_utils.dart';
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
  final bool? animated;

  /// The curve to apply when animating the parameters of sheet widget.
  final Curve? curve;

  /// The duration over which to animate the parameters of sheet widget.
  final Duration? duration;

  /// {@macro widgetarian.sheet.style.variant}
  final WxSheetVariant? variant;

  /// {@macro widgetarian.sheet.style.size}
  final WxSheetSize? size;

  /// {@macro widgetarian.sheet.style.severity}
  final Color? severity;

  /// The [WxSheetStyle] to be applied to the sheet widget
  final WxSheetStyle style;

  /// Defines a function used to resolve
  /// the sheet style based on the variant and severity.
  final WxSheetStyleResolver? styleResolver;

  /// Whether the overlay is enabled or not
  final bool? overlay;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a
  /// long-press will produce a short vibration, when feedback is enabled.
  ///
  /// See also:
  ///
  ///  * [Feedback] for providing platform-specific feedback to certain actions.
  final bool? feedback;

  /// {@macro flutter.widgets.Focus.canRequestFocus}
  final bool? focusable;

  /// Whether the descent [WxAnchor] is disabled for interaction.
  final bool? disabled;

  /// Whether the sheet inherits variant, severity, and size from its parent theme.
  final bool? inherits;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final MouseCursor? mouseCursor;

  /// A custom widget to display prior to the sheet's [child].
  final Widget? leading;

  /// A custom widget to display next to the sheet's [child].
  final Widget? trailing;

  /// Retrieves the effective style based on the provided properties.
  ///
  /// This getter combines the default style with the specified `style` and
  /// other properties to create the final style applied to the widget. It merges
  /// the provided styles with the default values and applies any overrides.
  ///
  /// Returns the calculated `WxSheetStyle` instance.
  WxSheetStyle get effectiveStyle {
    return style.copyWith(
      variant: variant,
      size: size,
      severity: severity,
    );
  }

  /// Creates a theme data that can be used for [SheetTheme].
  const WxSheetThemeData({
    this.animated,
    this.curve,
    this.duration,
    this.variant,
    this.size,
    this.severity,
    this.style = const WxSheetStyle(),
    this.styleResolver,
    this.overlay,
    this.feedback,
    this.focusable,
    this.disabled,
    this.inherits,
    this.mouseCursor,
    this.leading,
    this.trailing,
  });

  /// Creates a [WxSheetThemeData] from another one that probably null.
  WxSheetThemeData.from([
    WxSheetThemeData<T>? other,
    WxSheetThemeData<T> fallback = const WxSheetThemeData(),
  ])  : animated = other?.animated ?? fallback.animated,
        curve = other?.curve ?? fallback.curve,
        duration = other?.duration ?? fallback.duration,
        variant = other?.variant ?? fallback.variant,
        size = other?.size ?? fallback.size,
        severity = other?.severity ?? fallback.severity,
        style = other?.style ?? fallback.style,
        styleResolver = other?.styleResolver ?? fallback.styleResolver,
        overlay = other?.overlay ?? fallback.overlay,
        feedback = other?.feedback ?? fallback.feedback,
        focusable = other?.focusable ?? fallback.focusable,
        disabled = other?.disabled ?? fallback.disabled,
        inherits = other?.inherits ?? fallback.inherits,
        mouseCursor = other?.mouseCursor ?? fallback.mouseCursor,
        leading = other?.leading ?? fallback.leading,
        trailing = other?.trailing ?? fallback.trailing;

  /// Return [WxSheetStyle] that depends on [variant] and [severity]
  WxSheetStyle resolve(WxSheetStyleResolverData data) {
    final effectiveData = WxSheetStyleResolverData(
      variant: effectiveStyle.variant,
      size: effectiveStyle.size,
      severity: effectiveStyle.severity,
    ).merge(data);
    final fromResolver = styleResolver?.call(effectiveData);
    return effectiveStyle.merge(fromResolver);
  }

  /// Creates a copy of this [WxSheetThemeData] but with
  /// the given fields replaced with the new values.
  @override
  WxSheetThemeData<T> copyWith({
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
    bool? inherits,
    MouseCursor? mouseCursor,
    Widget? leading,
    Widget? trailing,
  }) {
    return WxSheetThemeData<T>(
      animated: animated ?? this.animated,
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
      variant: variant ?? this.variant,
      size: size ?? this.size,
      severity: severity ?? this.severity,
      style: this.style.merge(style),
      styleResolver: styleResolver ?? this.styleResolver,
      overlay: overlay ?? this.overlay,
      feedback: feedback ?? this.feedback,
      focusable: focusable ?? this.focusable,
      disabled: disabled ?? this.disabled,
      inherits: inherits ?? this.inherits,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      leading: leading ?? this.leading,
      trailing: trailing ?? this.trailing,
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
      variant: other.variant,
      size: other.size,
      severity: other.severity,
      style: other.style,
      styleResolver: other.styleResolver,
      overlay: other.overlay,
      feedback: other.feedback,
      focusable: other.focusable,
      disabled: other.disabled,
      inherits: other.inherits,
      mouseCursor: other.mouseCursor,
      leading: other.leading,
      trailing: other.trailing,
    );
  }

  @override
  WxSheetThemeData<T> lerp(WxSheetThemeData<T>? other, double t) {
    if (other is! WxSheetThemeData<T>) return this;
    return WxSheetThemeData<T>(
      animated: lerpBool(animated, other.animated, t) ?? animated,
      curve: lerpEnum(curve, other.curve, t) ?? curve,
      duration: lerpEnum(duration, other.duration, t) ?? duration,
      variant: lerpEnum(variant, other.variant, t),
      size: lerpEnum(size, other.size, t),
      severity: Color.lerp(severity, other.severity, t),
      style: WxSheetStyle.lerp(style, other.style, t) ?? style,
      styleResolver: lerpEnum(styleResolver, other.styleResolver, t),
      overlay: lerpBool(overlay, other.overlay, t) ?? overlay,
      feedback: lerpBool(feedback, other.feedback, t) ?? feedback,
      focusable: lerpBool(focusable, other.focusable, t) ?? focusable,
      disabled: lerpBool(disabled, other.disabled, t) ?? disabled,
      inherits: lerpBool(inherits, other.inherits, t) ?? inherits,
      mouseCursor: lerpEnum(mouseCursor, other.mouseCursor, t),
      leading: lerpEnum(leading, other.leading, t),
      trailing: lerpEnum(trailing, other.trailing, t),
    );
  }

  Map<String, dynamic> toMap() => {
        'animated': animated,
        'curve': curve,
        'duration': duration,
        'variant': variant,
        'size': size,
        'severity': severity,
        'style': style,
        'styleResolver': styleResolver,
        'overlay': overlay,
        'feedback': feedback,
        'focusable': focusable,
        'disabled': disabled,
        'inherits': inherits,
        'mouseCursor': mouseCursor,
        'leading': leading,
        'trailing': trailing,
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
