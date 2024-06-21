import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wx_utils/wx_utils.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';

/// Defines the visual properties of [WxToggleSheet].
///
/// Descendant widgets obtain the current [WxToggleSheetThemeData] object using
/// `WxTapSheetTheme.of(context)`. Instances of [WxToggleSheetThemeData]
/// can be customized with [WxToggleSheetThemeData.copyWith] or [WxToggleSheetThemeData.merge].
@immutable
class WxToggleSheetThemeData extends ThemeExtension<WxToggleSheetThemeData>
    with Diagnosticable {
  /// The curve to apply when animating the parameters of avatar widget.
  final Curve curve;

  /// The duration over which to animate the parameters of button widget.
  final Duration duration;

  /// The [WxToggleSheetStyle] to be applied to the button widget
  final WxToggleSheetStyle style;

  /// The [WxToggleSheetStyle] to be applied to the variant sheet widget
  final WxToggleSheetStyleByVariant variantStyle;

  /// The [WxToggleSheetStyle] to be applied to the sheet widget with severity
  Map<WxSheetSeverity, WxToggleSheetStyleByVariant> get severityStyle => {
        WxSheetSeverity.danger: dangerStyle,
        WxSheetSeverity.warning: warningStyle,
        WxSheetSeverity.success: successStyle,
        WxSheetSeverity.info: infoStyle,
      };

  /// The [WxToggleSheetStyle] to be applied to the sheet widget with danger severity
  final WxToggleSheetStyleByVariant dangerStyle;

  /// The [WxToggleSheetStyle] to be applied to the sheet widget with warning severity
  final WxToggleSheetStyleByVariant warningStyle;

  /// The [WxToggleSheetStyle] to be applied to the sheet widget with success severity
  final WxToggleSheetStyleByVariant successStyle;

  /// The [WxToggleSheetStyle] to be applied to the sheet widget with info severity
  final WxToggleSheetStyleByVariant infoStyle;

  /// The [Color] to be applied to the sheet with danger severity
  final Color dangerColor;

  /// The [Color] to be applied to the sheet with warning severity
  final Color warningColor;

  /// The [Color] to be applied to the sheet with success severity
  final Color successColor;

  /// The [Color] to be applied to the sheet with info severity
  final Color infoColor;

  /// Creates a theme data that can be used for [WxButtonTheme].
  const WxToggleSheetThemeData({
    required this.curve,
    required this.duration,
    required this.dangerColor,
    required this.warningColor,
    required this.successColor,
    required this.infoColor,
    required this.style,
    this.variantStyle = const {},
    this.dangerStyle = const {},
    this.warningStyle = const {},
    this.successStyle = const {},
    this.infoStyle = const {},
  });

  /// Create a [WxToggleSheetThemeData] with some reasonable default values.
  static const fallback = WxToggleSheetThemeData(
    curve: Curves.linear,
    duration: Duration(milliseconds: 150),
    style: WxToggleSheetStyle.defaults,
    dangerColor: Color(0xFFF44336),
    warningColor: Color(0xFFFF9800),
    successColor: Color(0xFF4CAF50),
    infoColor: Color(0xFF2196F3),
    variantStyle: {},
    dangerStyle: {},
    warningStyle: {},
    successStyle: {},
    infoStyle: {},
  );

  /// Creates a [WxToggleSheetThemeData] from another one that probably null.
  WxToggleSheetThemeData.from([WxToggleSheetThemeData? other])
      : curve = other?.curve ?? fallback.curve,
        duration = other?.duration ?? fallback.duration,
        style = other?.style ?? fallback.style,
        variantStyle = other?.variantStyle ?? fallback.variantStyle,
        dangerStyle = other?.dangerStyle ?? fallback.dangerStyle,
        warningStyle = other?.warningStyle ?? fallback.warningStyle,
        successStyle = other?.successStyle ?? fallback.successStyle,
        infoStyle = other?.infoStyle ?? fallback.infoStyle,
        dangerColor = other?.dangerColor ?? fallback.dangerColor,
        warningColor = other?.warningColor ?? fallback.warningColor,
        successColor = other?.successColor ?? fallback.successColor,
        infoColor = other?.infoColor ?? fallback.infoColor;

  /// Return [WxToggleSheetStyle] that depends on [variant] and [severity]
  WxToggleSheetStyle resolve({
    WxSheetVariant? variant,
    WxSheetSeverity? severity,
  }) {
    variant ??= style.variant;
    severity ??= style.severity;
    return const WxToggleSheetStyle()
        .merge(style)
        .merge(variantStyle[variant])
        .merge(severityStyle[severity]?[variant]);
  }

  /// Creates a copy of this [WxToggleSheetThemeData] but with
  /// the given fields replaced with the new values.
  @override
  WxToggleSheetThemeData copyWith({
    Curve? curve,
    Duration? duration,
    Color? dangerColor,
    Color? warningColor,
    Color? successColor,
    Color? infoColor,
    WxToggleSheetStyle? style,
    WxToggleSheetStyleByVariant? variantStyle,
    WxToggleSheetStyleByVariant? dangerStyle,
    WxToggleSheetStyleByVariant? warningStyle,
    WxToggleSheetStyleByVariant? successStyle,
    WxToggleSheetStyleByVariant? infoStyle,
  }) {
    return WxToggleSheetThemeData(
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
      dangerColor: dangerColor ?? this.dangerColor,
      warningColor: warningColor ?? this.warningColor,
      successColor: successColor ?? this.successColor,
      infoColor: infoColor ?? this.infoColor,
      style: this.style.merge(style),
      variantStyle: this.variantStyle.merge(variantStyle),
      dangerStyle: this.dangerStyle.merge(dangerStyle),
      warningStyle: this.warningStyle.merge(warningStyle),
      successStyle: this.successStyle.merge(successStyle),
      infoStyle: this.infoStyle.merge(infoStyle),
    );
  }

  /// Creates a copy of this [WxToggleSheetThemeData] but with
  /// the given fields replaced with the new values.
  WxToggleSheetThemeData merge(WxToggleSheetThemeData? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      curve: other.curve,
      duration: other.duration,
      dangerColor: other.dangerColor,
      warningColor: other.warningColor,
      successColor: other.successColor,
      infoColor: other.infoColor,
      style: other.style,
      variantStyle: other.variantStyle,
      dangerStyle: other.dangerStyle,
      warningStyle: other.warningStyle,
      successStyle: other.successStyle,
      infoStyle: other.infoStyle,
    );
  }

  @override
  WxToggleSheetThemeData lerp(
      ThemeExtension<WxToggleSheetThemeData>? other, double t) {
    if (other is! WxToggleSheetThemeData) return this;
    return WxToggleSheetThemeData(
      curve: lerpEnum(curve, other.curve, t) ?? curve,
      duration: lerpEnum(duration, other.duration, t) ?? duration,
      dangerColor: Color.lerp(dangerColor, other.dangerColor, t) ?? dangerColor,
      warningColor:
          Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
      successColor:
          Color.lerp(successColor, other.successColor, t) ?? successColor,
      infoColor: Color.lerp(infoColor, other.infoColor, t) ?? infoColor,
      style: WxToggleSheetStyle.lerp(style, other.style, t) ?? style,
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
        'dangerColor': dangerColor,
        'warningColor': warningColor,
        'successColor': successColor,
        'infoColor': infoColor,
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
    return other is WxToggleSheetThemeData && mapEquals(other.toMap(), toMap());
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
