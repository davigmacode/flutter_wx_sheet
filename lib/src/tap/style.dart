import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_event/widget_event.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'event.dart';

/// Map of [WxTapSheetStyle] by [WxSheetVariant] as key
typedef WxTapSheetStyleByVariant = Map<WxSheetVariant, WxTapSheetStyle?>;

extension WxTapSheetStyleByVariantUtils on WxTapSheetStyleByVariant {
  /// Creates a copy of this [WxTapSheetStyleByVariant] but with
  /// the given fields replaced with the new values.
  WxTapSheetStyleByVariant merge(WxTapSheetStyleByVariant? variants) {
    final entries = WxSheetVariant.values.map((key) {
      final other = variants?[key];
      final style = this[key]?.merge(other) ?? other;
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }

  /// Linearly interpolate with another [WxTapSheetStyleByVariant] object.
  WxTapSheetStyleByVariant lerp(WxTapSheetStyleByVariant? other, double t) {
    final entries = WxSheetVariant.values.map((key) {
      final style = WxTapSheetStyle.lerp(this[key], other?[key], t);
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }
}

/// The style to be applied to button widget
@immutable
class WxTapSheetStyle extends WxSheetStyle {
  /// Create a raw button's style
  const WxTapSheetStyle({
    super.variant,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.surfaceTint,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.foregroundSpacing,
    super.foregroundLoosen,
    super.foregroundExpanded,
    super.foregroundAlign,
    super.foregroundJustify,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
  });

  /// Create a button's style from another style
  WxTapSheetStyle.from(WxTapSheetStyle? super.other) : super.from();

  /// Create a button's style from another style
  WxTapSheetStyle.fromAncestor(super.other) : super.from();

  /// An [WxTapSheetStyle] with some reasonable default values.
  static const defaults = WxTapSheetStyle(
    clipBehavior: Clip.antiAlias,
    foregroundJustify: MainAxisAlignment.center,
    foregroundAlign: CrossAxisAlignment.center,
    foregroundLoosen: true,
  );

  static const disabledForegroundAlpha = 0x61; // 38%
  static const disabledBackgroundAlpha = 0x0c; // 38% * 12% = 5%
  static const disabledBorderAlpha = 0x0c; // 38% * 12% = 5%

  /// Creates a copy of this [WxTapSheetStyle] but with
  /// [padding] is [EdgeInsets.zero] and squared size.
  WxTapSheetStyle icon({
    OutlinedBorder? border,
    double? size,
  }) {
    return copyWith(
      border: border ?? const CircleBorder(),
      width: size ?? defaults.height,
      height: size ?? defaults.height,
      padding: EdgeInsets.zero,
    );
  }

  /// Creates a copy of this [WxTapSheetStyle] but with
  /// the [width] replaced with [double.infinity].
  WxTapSheetStyle block({
    bool? expanded,
    CrossAxisAlignment? alignChildren,
    MainAxisAlignment? justifyChildren,
  }) {
    return copyWith(
      width: double.infinity,
      minWidth: double.infinity,
      maxWidth: double.infinity,
      foregroundExpanded: expanded ?? true,
      foregroundAlign: alignChildren,
      foregroundJustify: justifyChildren,
    );
  }

  /// Creates a copy of this [WxTapSheetStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxTapSheetStyle copyWith({
    WxSheetVariant? variant,
    WxSheetSeverity? severity,
    double? width,
    double? height,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Alignment? alignment,
    Clip? clipBehavior,
    bool? overlayDisabled,
    Color? overlayColor,
    double? overlayOpacity,
    Color? surfaceTint,
    Color? elevationColor,
    double? elevation,
    TextStyle? foregroundStyle,
    Color? foregroundColor,
    double? foregroundOpacity,
    int? foregroundAlpha,
    double? foregroundSpacing,
    bool? foregroundLoosen,
    bool? foregroundExpanded,
    CrossAxisAlignment? foregroundAlign,
    MainAxisAlignment? foregroundJustify,
    Color? backgroundColor,
    double? backgroundOpacity,
    int? backgroundAlpha,
    Color? borderColor,
    double? borderOpacity,
    int? borderAlpha,
    double? borderWidth,
    BorderRadius? borderRadius,
    BorderStyle? borderStyle,
    double? borderOffset,
    OutlinedBorder? border,
    DecorationImage? image,
    List<BoxShadow>? shadows,
    Gradient? gradient,
    Color? iconColor,
    double? iconOpacity,
    double? iconSize,
    bool? inherits,
    WxTapSheetStyle? focusedStyle,
    WxTapSheetStyle? hoveredStyle,
    WxTapSheetStyle? pressedStyle,
    WxTapSheetStyle? loadingStyle,
    WxTapSheetStyle? disabledStyle,
  }) {
    final style = WxTapSheetStyle(
      variant: variant ?? this.variant,
      severity: severity ?? this.severity,
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      maxWidth: maxWidth ?? this.maxWidth,
      minHeight: minHeight ?? this.minHeight,
      maxHeight: maxHeight ?? this.maxHeight,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      overlayDisabled: overlayDisabled ?? this.overlayDisabled,
      overlayColor: overlayColor ?? this.overlayColor,
      overlayOpacity: overlayOpacity ?? this.overlayOpacity,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      elevationColor: elevationColor ?? this.elevationColor,
      elevation: elevation ?? this.elevation,
      foregroundStyle: foregroundStyle ?? this.foregroundStyle,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundOpacity: foregroundOpacity ?? this.foregroundOpacity,
      foregroundAlpha: foregroundAlpha ?? this.foregroundAlpha,
      foregroundSpacing: foregroundSpacing ?? this.foregroundSpacing,
      foregroundLoosen: foregroundLoosen ?? this.foregroundLoosen,
      foregroundExpanded: foregroundExpanded ?? this.foregroundExpanded,
      foregroundAlign: foregroundAlign ?? this.foregroundAlign,
      foregroundJustify: foregroundJustify ?? this.foregroundJustify,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundOpacity: backgroundOpacity ?? this.backgroundOpacity,
      backgroundAlpha: backgroundAlpha ?? this.backgroundAlpha,
      borderColor: borderColor ?? this.borderColor,
      borderOpacity: borderOpacity ?? this.borderOpacity,
      borderAlpha: borderAlpha ?? this.borderAlpha,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      borderStyle: borderStyle ?? this.borderStyle,
      borderOffset: borderOffset ?? this.borderOffset,
      border: border ?? this.border,
      image: image ?? this.image,
      shadows: shadows ?? this.shadows,
      gradient: gradient ?? this.gradient,
      iconColor: iconColor ?? this.iconColor,
      iconOpacity: iconOpacity ?? this.iconOpacity,
      iconSize: iconSize ?? this.iconSize,
    );

    final hasDrivenStyle = [
      inherits,
      focusedStyle,
      hoveredStyle,
      pressedStyle,
      loadingStyle,
      disabledStyle,
    ].any((el) => el != null);

    if (hasDrivenStyle) {
      return WxDrivenTapSheetStyle.from(
        style,
        focusedStyle: focusedStyle,
        hoveredStyle: hoveredStyle,
        pressedStyle: pressedStyle,
        disabledStyle: disabledStyle,
        loadingStyle: loadingStyle,
        inherits: inherits,
      );
    }
    return style;
  }

  /// Creates a copy of this [WxTapSheetStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxTapSheetStyle merge(covariant WxTapSheetStyle? other) {
    // if null return current object
    if (other == null) return this;

    var style = copyWith(
      variant: other.variant,
      severity: other.severity,
      width: other.width,
      height: other.height,
      minWidth: other.minWidth,
      maxWidth: other.maxWidth,
      minHeight: other.minHeight,
      maxHeight: other.maxHeight,
      margin: other.margin,
      padding: other.padding,
      clipBehavior: other.clipBehavior,
      overlayDisabled: other.overlayDisabled,
      overlayColor: other.overlayColor,
      overlayOpacity: other.overlayOpacity,
      surfaceTint: other.surfaceTint,
      elevationColor: other.elevationColor,
      elevation: other.elevation,
      foregroundStyle: other.foregroundStyle,
      foregroundColor: other.foregroundColor,
      foregroundOpacity: other.foregroundOpacity,
      foregroundAlpha: other.foregroundAlpha,
      foregroundSpacing: other.foregroundSpacing,
      foregroundLoosen: other.foregroundLoosen,
      foregroundExpanded: other.foregroundExpanded,
      foregroundAlign: other.foregroundAlign,
      foregroundJustify: other.foregroundJustify,
      backgroundColor: other.backgroundColor,
      backgroundOpacity: other.backgroundOpacity,
      backgroundAlpha: other.backgroundAlpha,
      borderColor: other.borderColor,
      borderOpacity: other.borderOpacity,
      borderAlpha: other.borderAlpha,
      borderWidth: other.borderWidth,
      borderRadius: other.borderRadius,
      borderStyle: other.borderStyle,
      borderOffset: other.borderOffset,
      border: other.border,
      image: other.image,
      shadows: other.shadows,
      gradient: other.gradient,
      iconColor: other.iconColor,
      iconOpacity: other.iconOpacity,
      iconSize: other.iconSize,
    );

    if (other is WxDrivenTapSheetStyle) {
      style = style.copyWith(
        inherits: other.inherits,
        focusedStyle: other.focusedStyle,
        hoveredStyle: other.hoveredStyle,
        pressedStyle: other.pressedStyle,
        loadingStyle: other.loadingStyle,
        disabledStyle: other.disabledStyle,
      );
    }

    return style;
  }

  /// Linearly interpolate between two [WxTapSheetStyle] objects.
  static WxTapSheetStyle? lerp(
      WxTapSheetStyle? a, WxTapSheetStyle? b, double t) {
    if (a == null && b == null) return null;

    final sheetStyle = WxSheetStyle.lerp(a, b, t);
    return WxTapSheetStyle.fromAncestor(sheetStyle);
  }
}

/// Create a [WxTapSheetStyle] when some events occurs
class WxDrivenTapSheetStyle extends WxTapSheetStyle
    implements DrivenProperty<WxTapSheetStyle?> {
  /// Whether the resolved style is merged to
  /// the previous resolved style or not
  final bool? inherits;

  /// The style to be resolved when
  /// events includes [WxTapSheetEvent.focused].
  final WxTapSheetStyle? focusedStyle;

  /// The style to be resolved when
  /// events includes [WxTapSheetEvent.hovered].
  final WxTapSheetStyle? hoveredStyle;

  /// The style to be resolved when
  /// events includes [WxTapSheetEvent.pressed].
  final WxTapSheetStyle? pressedStyle;

  /// The style to be resolved when
  /// events includes [WxTapSheetEvent.loading].
  final WxTapSheetStyle? loadingStyle;

  /// The style to be resolved when
  /// events includes [WxTapSheetEvent.disabled].
  final WxTapSheetStyle? disabledStyle;

  /// Map of driven style, order matters
  Map<WidgetEvent, WxTapSheetStyle?> get driven => {
        WidgetEvent.focused: focusedStyle,
        WidgetEvent.hovered: hoveredStyle,
        WidgetEvent.pressed: pressedStyle,
        WidgetEvent.loading: loadingStyle,
        WidgetEvent.disabled: disabledStyle,
      };

  /// Create a raw [WxDrivenTapSheetStyle].
  const WxDrivenTapSheetStyle({
    super.variant,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.surfaceTint,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.foregroundSpacing,
    super.foregroundLoosen,
    super.foregroundExpanded,
    super.foregroundAlign,
    super.foregroundJustify,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  });

  /// Create a [WxDrivenTapSheetStyle] with value
  /// from another [WxTapSheetStyle].
  WxDrivenTapSheetStyle.from(
    super.enabled, {
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  }) : super.from();

  /// Create a [WxDrivenTapSheetStyle] from a resolver callback
  WxDrivenTapSheetStyle.resolver(
    DrivenPropertyResolver<WxTapSheetStyle?> resolver, {
    this.inherits = false,
  })  : focusedStyle = resolver({WidgetEvent.focused}),
        hoveredStyle = resolver({WidgetEvent.hovered}),
        pressedStyle = resolver({WidgetEvent.pressed}),
        loadingStyle = resolver({WidgetEvent.loading}),
        disabledStyle = resolver({WidgetEvent.disabled}),
        super.from(resolver({}));

  /// Resolves the value for the given set of events
  /// if `value` is an event driven [WxTapSheetStyle],
  /// otherwise returns the value itself.
  static WxTapSheetStyle? evaluate(
    WxTapSheetStyle? value,
    Set<WidgetEvent> events,
  ) =>
      DrivenProperty.evaluate<WxTapSheetStyle?>(value, events);

  @override
  WxTapSheetStyle resolve(Set<WidgetEvent> events) {
    WxTapSheetStyle style = this;
    for (var e in driven.entries) {
      if (events.contains(e.key)) {
        final evaluated = evaluate(e.value, events);
        style = inherits != false
            ? style.merge(evaluated)
            : WxTapSheetStyle.from(evaluated);
      }
    }
    return style;
  }

  /// Creates a copy of this [WxDrivenTapSheetStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxDrivenTapSheetStyle copyWith({
    WxSheetVariant? variant,
    WxSheetSeverity? severity,
    double? width,
    double? height,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Alignment? alignment,
    Clip? clipBehavior,
    bool? overlayDisabled,
    Color? overlayColor,
    double? overlayOpacity,
    Color? surfaceTint,
    Color? elevationColor,
    double? elevation,
    TextStyle? foregroundStyle,
    Color? foregroundColor,
    double? foregroundOpacity,
    int? foregroundAlpha,
    double? foregroundSpacing,
    bool? foregroundLoosen,
    bool? foregroundExpanded,
    CrossAxisAlignment? foregroundAlign,
    MainAxisAlignment? foregroundJustify,
    Color? backgroundColor,
    double? backgroundOpacity,
    int? backgroundAlpha,
    Color? borderColor,
    double? borderOpacity,
    int? borderAlpha,
    double? borderWidth,
    BorderRadius? borderRadius,
    BorderStyle? borderStyle,
    double? borderOffset,
    OutlinedBorder? border,
    DecorationImage? image,
    List<BoxShadow>? shadows,
    Gradient? gradient,
    Color? iconColor,
    double? iconOpacity,
    double? iconSize,
    bool? inherits,
    WxTapSheetStyle? focusedStyle,
    WxTapSheetStyle? hoveredStyle,
    WxTapSheetStyle? pressedStyle,
    WxTapSheetStyle? loadingStyle,
    WxTapSheetStyle? disabledStyle,
  }) {
    final ancestor = super.copyWith(
      variant: variant,
      severity: severity,
      width: width,
      height: height,
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
      margin: margin,
      padding: padding,
      clipBehavior: clipBehavior,
      overlayDisabled: overlayDisabled,
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      elevationColor: elevationColor,
      surfaceTint: surfaceTint,
      elevation: elevation,
      foregroundStyle: foregroundStyle,
      foregroundColor: foregroundColor,
      foregroundOpacity: foregroundOpacity,
      foregroundAlpha: foregroundAlpha,
      foregroundSpacing: foregroundSpacing,
      foregroundLoosen: foregroundLoosen,
      foregroundExpanded: foregroundExpanded,
      foregroundAlign: foregroundAlign,
      foregroundJustify: foregroundJustify,
      backgroundColor: backgroundColor,
      backgroundOpacity: backgroundOpacity,
      backgroundAlpha: backgroundAlpha,
      borderColor: borderColor,
      borderOpacity: borderOpacity,
      borderAlpha: borderAlpha,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderStyle: borderStyle,
      borderOffset: borderOffset,
      border: border,
      image: image,
      shadows: shadows,
      gradient: gradient,
      iconColor: iconColor,
      iconOpacity: iconOpacity,
      iconSize: iconSize,
    );
    return WxDrivenTapSheetStyle.from(
      ancestor,
      inherits: inherits ?? this.inherits,
      focusedStyle: this.focusedStyle?.merge(focusedStyle) ?? focusedStyle,
      hoveredStyle: this.hoveredStyle?.merge(hoveredStyle) ?? hoveredStyle,
      pressedStyle: this.pressedStyle?.merge(pressedStyle) ?? pressedStyle,
      loadingStyle: this.loadingStyle?.merge(loadingStyle) ?? loadingStyle,
      disabledStyle: this.disabledStyle?.merge(disabledStyle) ?? disabledStyle,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('inherits', inherits));
    properties.add(DiagnosticsProperty('focusedStyle', focusedStyle));
    properties.add(DiagnosticsProperty('hoveredStyle', hoveredStyle));
    properties.add(DiagnosticsProperty('pressedStyle', pressedStyle));
    properties.add(DiagnosticsProperty('disabledStyle', disabledStyle));
  }
}
