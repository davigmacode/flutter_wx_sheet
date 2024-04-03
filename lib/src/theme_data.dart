import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wx_utils/wx_utils.dart';
import 'style.dart';
import 'types.dart';
import 'wrapper.dart';
import 'theme_preset.dart';

/// Map of [WxSheetStyle] by [WxSheetVariant] as key
typedef WxSheetStyleByVariant = Map<WxSheetVariant, WxSheetStyle?>;

extension WxSheetStyleByVariantUtils on WxSheetStyleByVariant {
  /// Creates a copy of this [WxSheetStyleByVariant] but with
  /// the given fields replaced with the new values.
  WxSheetStyleByVariant merge(WxSheetStyleByVariant? variants) {
    final entries = WxSheetVariant.values.map((key) {
      final other = variants?[key];
      final style = this[key]?.merge(other) ?? other;
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }

  /// Linearly interpolate with another [WxSheetStyleByVariant] object.
  WxSheetStyleByVariant lerp(WxSheetStyleByVariant? other, double t) {
    final entries = WxSheetVariant.values.map((key) {
      final style = WxSheetStyle.lerp(this[key], other?[key], t);
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }
}

/// Defines the visual properties of [Sheet].
///
/// Descendant widgets obtain the current [WxSheetThemeData] object using
/// `SheetTheme.of(context)`. Instances of [WxSheetThemeData]
/// can be customized with [WxSheetThemeData.copyWith] or [WxSheetThemeData.merge].
@immutable
class WxSheetThemeData extends ThemeExtension<WxSheetThemeData>
    with Diagnosticable {
  /// The curve to apply when animating the parameters of sheet widget.
  final Curve curve;

  /// The duration over which to animate the parameters of sheet widget.
  final Duration duration;

  /// Called to build the child content
  final WxSheetBuilder wrapper;

  /// The [Color] to be applied to the sheet with danger severity
  final Color dangerColor;

  /// The [Color] to be applied to the sheet with warning severity
  final Color warningColor;

  /// The [Color] to be applied to the sheet with success severity
  final Color successColor;

  /// The [Color] to be applied to the sheet with info severity
  final Color infoColor;

  /// The [WxSheetStyle] to be applied to the sheet widget
  final WxSheetStyle style;

  /// The [WxSheetStyle] to be applied to the variant sheet widget
  final WxSheetStyleByVariant variantStyle;

  /// The [WxSheetStyle] to be applied to the sheet widget with danger severity
  final WxSheetStyleByVariant dangerStyle;

  /// The [WxSheetStyle] to be applied to the sheet widget with warning severity
  final WxSheetStyleByVariant warningStyle;

  /// The [WxSheetStyle] to be applied to the sheet widget with success severity
  final WxSheetStyleByVariant successStyle;

  /// The [WxSheetStyle] to be applied to the sheet widget with info severity
  final WxSheetStyleByVariant infoStyle;

  /// The [WxSheetStyle] to be applied to the sheet widget with severity
  Map<WxSheetSeverity, WxSheetStyleByVariant> get severityStyle => {
        WxSheetSeverity.danger: dangerStyle,
        WxSheetSeverity.warning: warningStyle,
        WxSheetSeverity.success: successStyle,
        WxSheetSeverity.info: infoStyle,
      };

  /// Creates a theme data that can be used for [SheetTheme].
  const WxSheetThemeData({
    required this.curve,
    required this.duration,
    required this.wrapper,
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

  /// Create a [WxSheetThemeData] with some reasonable default values.
  static const fallback = WxSheetThemeData(
    curve: Curves.linear,
    duration: Duration(milliseconds: 200),
    wrapper: WxSheetWrapper.fallback,
    dangerColor: Color(0xFFF44336),
    warningColor: Color(0xFFFF9800),
    successColor: Color(0xFF4CAF50),
    infoColor: Color(0xFF2196F3),
    style: WxSheetStyle.defaults,
    variantStyle: {},
    dangerStyle: {},
    warningStyle: {},
    successStyle: {},
    infoStyle: {},
  );

  /// Creates a [WxSheetThemeData] from another one that probably null.
  WxSheetThemeData.from([WxSheetThemeData? other])
      : curve = other?.curve ?? fallback.curve,
        duration = other?.duration ?? fallback.duration,
        wrapper = other?.wrapper ?? fallback.wrapper,
        dangerColor = other?.dangerColor ?? fallback.dangerColor,
        warningColor = other?.warningColor ?? fallback.warningColor,
        successColor = other?.successColor ?? fallback.successColor,
        infoColor = other?.infoColor ?? fallback.infoColor,
        style = other?.style ?? fallback.style,
        variantStyle = other?.variantStyle ?? fallback.variantStyle,
        dangerStyle = other?.dangerStyle ?? fallback.dangerStyle,
        warningStyle = other?.warningStyle ?? fallback.warningStyle,
        successStyle = other?.successStyle ?? fallback.successStyle,
        infoStyle = other?.infoStyle ?? fallback.infoStyle;

  /// A [WxSheetThemeData] with some default values.
  static WxSheetThemeData defaults(BuildContext context) =>
      WxSheetThemeDefaults(context);

  /// A [WxSheetThemeData] with material 2 default values.
  static WxSheetThemeData m2(BuildContext context) => WxSheetThemeM2(context);

  /// A [WxSheetThemeData] with material 3 default values.
  static WxSheetThemeData m3(BuildContext context) => WxSheetThemeM3(context);

  /// A [WxSheetThemeData] with ios default values.
  static WxSheetThemeData ios(BuildContext context) => WxSheetThemeIos(context);

  /// Return [WxSheetStyle] that depends on [variant] and [severity]
  WxSheetStyle resolve({WxSheetVariant? variant, WxSheetSeverity? severity}) {
    return WxSheetStyle.from(style)
        .merge(variantStyle[variant])
        .merge(severityStyle[severity]?[variant]);
  }

  /// Creates a copy of this [WxSheetThemeData] but with
  /// the given fields replaced with the new values.
  @override
  WxSheetThemeData copyWith({
    Curve? curve,
    Duration? duration,
    WxSheetBuilder? wrapper,
    Color? dangerColor,
    Color? warningColor,
    Color? successColor,
    Color? infoColor,
    WxSheetStyle? style,
    WxSheetStyleByVariant? variantStyle,
    WxSheetStyleByVariant? dangerStyle,
    WxSheetStyleByVariant? warningStyle,
    WxSheetStyleByVariant? successStyle,
    WxSheetStyleByVariant? infoStyle,
  }) {
    return WxSheetThemeData(
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
      wrapper: wrapper ?? this.wrapper,
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

  /// Creates a copy of this [WxSheetThemeData] but with
  /// the given fields replaced with the new values.
  WxSheetThemeData merge(WxSheetThemeData? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      curve: other.curve,
      duration: other.duration,
      wrapper: other.wrapper,
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
  WxSheetThemeData lerp(ThemeExtension<WxSheetThemeData>? other, double t) {
    if (other is! WxSheetThemeData) return this;
    return WxSheetThemeData(
      curve: lerpEnum(curve, other.curve, t) ?? curve,
      duration: lerpEnum(duration, other.duration, t) ?? duration,
      wrapper: lerpEnum(wrapper, other.wrapper, t) ?? wrapper,
      dangerColor: Color.lerp(dangerColor, other.dangerColor, t) ?? dangerColor,
      warningColor:
          Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
      successColor:
          Color.lerp(successColor, other.successColor, t) ?? successColor,
      infoColor: Color.lerp(infoColor, other.infoColor, t) ?? infoColor,
      style: WxSheetStyle.lerp(style, other.style, t) ?? style,
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
        'wrapper': wrapper,
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
    return other is WxSheetThemeData && mapEquals(other.toMap(), toMap());
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
