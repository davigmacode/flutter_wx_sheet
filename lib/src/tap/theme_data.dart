import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wx_utils/wx_utils.dart';
import 'style.dart';
import 'theme_preset.dart';
import '../types.dart';

/// Defines the visual properties of [WxTapSheet].
///
/// Descendant widgets obtain the current [WxTapSheetThemeData] object using
/// `WxTapSheetTheme.of(context)`. Instances of [WxTapSheetThemeData]
/// can be customized with [WxTapSheetThemeData.copyWith] or [WxTapSheetThemeData.merge].
@immutable
class WxTapSheetThemeData extends ThemeExtension<WxTapSheetThemeData>
    with Diagnosticable {
  /// The curve to apply when animating the parameters of avatar widget.
  final Curve curve;

  /// The duration over which to animate the parameters of button widget.
  final Duration duration;

  /// The [WxTapSheetStyle] to be applied to the button widget
  final WxTapSheetStyle style;

  /// The [WxTapSheetStyle] to be applied to the variant sheet widget
  final WxTapSheetStyleByVariant variantStyle;

  /// The [WxTapSheetStyle] to be applied to the sheet widget with danger severity
  final WxTapSheetStyleByVariant dangerStyle;

  /// The [WxTapSheetStyle] to be applied to the sheet widget with warning severity
  final WxTapSheetStyleByVariant warningStyle;

  /// The [WxTapSheetStyle] to be applied to the sheet widget with success severity
  final WxTapSheetStyleByVariant successStyle;

  /// The [WxTapSheetStyle] to be applied to the sheet widget with info severity
  final WxTapSheetStyleByVariant infoStyle;

  /// The [WxTapSheetStyle] to be applied to the sheet widget with severity
  Map<WxSheetSeverity, WxTapSheetStyleByVariant> get severityStyle => {
        WxSheetSeverity.danger: dangerStyle,
        WxSheetSeverity.warning: warningStyle,
        WxSheetSeverity.success: successStyle,
        WxSheetSeverity.info: infoStyle,
      };

  /// Creates a theme data that can be used for [WxButtonTheme].
  const WxTapSheetThemeData({
    required this.curve,
    required this.duration,
    required this.style,
    this.variantStyle = const {},
    this.dangerStyle = const {},
    this.warningStyle = const {},
    this.successStyle = const {},
    this.infoStyle = const {},
  });

  /// Create a [WxTapSheetThemeData] with some reasonable default values.
  static const fallback = WxTapSheetThemeData(
    curve: Curves.linear,
    duration: Duration(milliseconds: 150),
    style: WxTapSheetStyle.defaults,
    variantStyle: {},
    dangerStyle: {},
    warningStyle: {},
    successStyle: {},
    infoStyle: {},
  );

  /// Creates a [WxTapSheetThemeData] from another one that probably null.
  WxTapSheetThemeData.from([WxTapSheetThemeData? other])
      : curve = other?.curve ?? fallback.curve,
        duration = other?.duration ?? fallback.duration,
        style = other?.style ?? fallback.style,
        variantStyle = other?.variantStyle ?? fallback.variantStyle,
        dangerStyle = other?.dangerStyle ?? fallback.dangerStyle,
        warningStyle = other?.warningStyle ?? fallback.warningStyle,
        successStyle = other?.successStyle ?? fallback.successStyle,
        infoStyle = other?.infoStyle ?? fallback.infoStyle;

  /// A [WxTapSheetThemeData] with default values.
  factory WxTapSheetThemeData.defaults(BuildContext context) =>
      WxTapSheetThemeDefaults(context);

  /// A [WxTapSheetThemeData] with material 2 default values.
  factory WxTapSheetThemeData.m2(BuildContext context) =>
      WxTapSheetThemeM2(context);

  /// A [WxTapSheetThemeData] with material 3 default values.
  factory WxTapSheetThemeData.m3(BuildContext context) =>
      WxTapSheetThemeM3(context);

  /// A [WxTapSheetThemeData] with ios default values.
  factory WxTapSheetThemeData.ios(BuildContext context) =>
      WxTapSheetThemeIos(context);

  /// Return [WxTapSheetStyle] that depends on [variant] and [severity]
  WxTapSheetStyle resolve({
    WxSheetVariant? variant,
    WxSheetSeverity? severity,
  }) {
    variant ??= style.variant;
    severity ??= style.severity;
    return const WxTapSheetStyle()
        .merge(style)
        .merge(variantStyle[variant])
        .merge(severityStyle[severity]?[variant]);
  }

  /// Creates a copy of this [WxTapSheetThemeData] but with
  /// the given fields replaced with the new values.
  @override
  WxTapSheetThemeData copyWith({
    Curve? curve,
    Duration? duration,
    WxTapSheetStyle? style,
    WxTapSheetStyleByVariant? variantStyle,
    WxTapSheetStyleByVariant? dangerStyle,
    WxTapSheetStyleByVariant? warningStyle,
    WxTapSheetStyleByVariant? successStyle,
    WxTapSheetStyleByVariant? infoStyle,
  }) {
    return WxTapSheetThemeData(
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
      style: this.style.merge(style),
      variantStyle: this.variantStyle.merge(variantStyle),
      dangerStyle: this.dangerStyle.merge(dangerStyle),
      warningStyle: this.warningStyle.merge(warningStyle),
      successStyle: this.successStyle.merge(successStyle),
      infoStyle: this.infoStyle.merge(infoStyle),
    );
  }

  /// Creates a copy of this [WxTapSheetThemeData] but with
  /// the given fields replaced with the new values.
  WxTapSheetThemeData merge(WxTapSheetThemeData? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      curve: other.curve,
      duration: other.duration,
      style: other.style,
      variantStyle: other.variantStyle,
      dangerStyle: other.dangerStyle,
      warningStyle: other.warningStyle,
      successStyle: other.successStyle,
      infoStyle: other.infoStyle,
    );
  }

  @override
  WxTapSheetThemeData lerp(
      ThemeExtension<WxTapSheetThemeData>? other, double t) {
    if (other is! WxTapSheetThemeData) return this;
    return WxTapSheetThemeData(
      curve: lerpEnum(curve, other.curve, t) ?? curve,
      duration: lerpEnum(duration, other.duration, t) ?? duration,
      style: WxTapSheetStyle.lerp(style, other.style, t) ?? style,
      variantStyle: variantStyle.lerp(other.variantStyle, t),
      dangerStyle: dangerStyle.lerp(other.dangerStyle, t),
      warningStyle: warningStyle.lerp(other.warningStyle, t),
      successStyle: successStyle.lerp(other.successStyle, t),
      infoStyle: infoStyle.lerp(other.infoStyle, t),
    );
  }

  Map<String, dynamic> toMap() => {
        'curve': curve,
        'duration': duration,
        'style': style,
        'variantStyle': variantStyle,
        'dangerStyle': dangerStyle,
        'warningStyle': warningStyle,
        'successStyle': successStyle,
        'infoStyle': infoStyle,
      };

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is WxTapSheetThemeData && mapEquals(other.toMap(), toMap());
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
