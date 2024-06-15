import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_event/widget_event.dart';
import 'event.dart';
import '../types.dart';
import '../style.dart';

/// Map of [WxToggleSheetStyle] by [WxSheetVariant] as key
typedef WxToggleSheetStyleByVariant = Map<WxSheetVariant, WxToggleSheetStyle?>;

extension WxToggleSheetStyleByVariantUtils on WxToggleSheetStyleByVariant {
  /// Creates a copy of this [WxToggleSheetStyleByVariant] but with
  /// the given fields replaced with the new values.
  WxToggleSheetStyleByVariant merge(WxToggleSheetStyleByVariant? variants) {
    final entries = WxSheetVariant.values.map((key) {
      final other = variants?[key];
      final style = this[key]?.merge(other) ?? other;
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }

  /// Linearly interpolate with another [WxToggleSheetStyleByVariant] object.
  WxToggleSheetStyleByVariant lerp(
      WxToggleSheetStyleByVariant? other, double t) {
    final entries = WxSheetVariant.values.map((key) {
      final style = WxToggleSheetStyle.lerp(this[key], other?[key], t);
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }
}

/// The style to be applied to button widget
@immutable
class WxToggleSheetStyle extends WxSheetStyle {
  /// Create a raw button's style
  const WxToggleSheetStyle({
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
  WxToggleSheetStyle.from(WxToggleSheetStyle? super.other) : super.from();

  /// Create a button's style from another style
  WxToggleSheetStyle.fromAncestor(super.other) : super.from();

  /// An [WxToggleSheetStyle] with some reasonable default values.
  static const defaults = WxToggleSheetStyle(
    clipBehavior: Clip.antiAlias,
    foregroundJustify: MainAxisAlignment.center,
    foregroundAlign: CrossAxisAlignment.center,
    foregroundLoosen: true,
  );

  static const disabledForegroundAlpha = 0x61; // 38%
  static const disabledBackgroundAlpha = 0x0c; // 38% * 12% = 5%
  static const disabledBorderAlpha = 0x0c; // 38% * 12% = 5%

  /// Creates a copy of this [WxToggleSheetStyle] but with
  /// [padding] is [EdgeInsets.zero] and squared size.
  WxToggleSheetStyle icon({
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

  /// Creates a copy of this [WxToggleSheetStyle] but with
  /// the [width] replaced with [double.infinity].
  WxToggleSheetStyle block({
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

  /// Creates a copy of this [WxToggleSheetStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxToggleSheetStyle copyWith({
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
    WxToggleSheetStyle? selectedStyle,
    WxToggleSheetStyle? focusedStyle,
    WxToggleSheetStyle? hoveredStyle,
    WxToggleSheetStyle? pressedStyle,
    WxToggleSheetStyle? loadingStyle,
    WxToggleSheetStyle? disabledStyle,
  }) {
    final style = WxToggleSheetStyle(
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
      selectedStyle,
      focusedStyle,
      hoveredStyle,
      pressedStyle,
      disabledStyle,
    ].any((el) => el != null);

    if (hasDrivenStyle) {
      return WxDrivenToggleSheetStyle.from(
        style,
        selectedStyle: selectedStyle,
        focusedStyle: focusedStyle,
        hoveredStyle: hoveredStyle,
        pressedStyle: pressedStyle,
        loadingStyle: loadingStyle,
        disabledStyle: disabledStyle,
        inherits: inherits,
      );
    }
    return style;
  }

  /// Creates a copy of this [WxToggleSheetStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxToggleSheetStyle merge(covariant WxToggleSheetStyle? other) {
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

    if (other is WxDrivenToggleSheetStyle) {
      style = style.copyWith(
        inherits: other.inherits,
        selectedStyle: other.selectedStyle,
        focusedStyle: other.focusedStyle,
        hoveredStyle: other.hoveredStyle,
        pressedStyle: other.pressedStyle,
        loadingStyle: other.loadingStyle,
        disabledStyle: other.disabledStyle,
      );
    }

    return style;
  }

  /// Linearly interpolate between two [WxToggleSheetStyle] objects.
  static WxToggleSheetStyle? lerp(
      WxToggleSheetStyle? a, WxToggleSheetStyle? b, double t) {
    if (a == null && b == null) return null;

    final sheetStyle = WxSheetStyle.lerp(a, b, t);
    return WxToggleSheetStyle.fromAncestor(sheetStyle);
  }
}

/// Create a [WxToggleSheetStyle] when some events occurs
class WxDrivenToggleSheetStyle extends WxToggleSheetStyle
    implements DrivenProperty<WxToggleSheetStyle?> {
  /// Whether the resolved style is merged to
  /// the previous resolved style or not
  final bool? inherits;

  /// The style to be resolved when
  /// events includes [WxToggleSheetEvent.selected].
  final WxToggleSheetStyle? selectedStyle;

  /// The style to be resolved when
  /// events includes [WxToggleSheetEvent.focused].
  final WxToggleSheetStyle? focusedStyle;

  /// The style to be resolved when
  /// events includes [WxToggleSheetEvent.hovered].
  final WxToggleSheetStyle? hoveredStyle;

  /// The style to be resolved when
  /// events includes [WxToggleSheetEvent.pressed].
  final WxToggleSheetStyle? pressedStyle;

  /// The style to be resolved when
  /// events includes [WxToggleSheetEvent.loading].
  final WxToggleSheetStyle? loadingStyle;

  /// The style to be resolved when
  /// events includes [WxToggleSheetEvent.disabled].
  final WxToggleSheetStyle? disabledStyle;

  /// Map of driven style, order matters
  Map<WidgetEvent, WxToggleSheetStyle?> get driven => {
        WidgetEvent.selected: selectedStyle,
        WidgetEvent.focused: focusedStyle,
        WidgetEvent.hovered: hoveredStyle,
        WidgetEvent.pressed: pressedStyle,
        WidgetEvent.loading: loadingStyle,
        WidgetEvent.disabled: disabledStyle,
      };

  /// Create a raw [WxDrivenToggleSheetStyle].
  const WxDrivenToggleSheetStyle({
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
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  });

  /// Create a [WxDrivenToggleSheetStyle] with value
  /// from another [WxToggleSheetStyle].
  WxDrivenToggleSheetStyle.from(
    super.enabled, {
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  }) : super.from();

  /// Create a [WxDrivenToggleSheetStyle] from a resolver callback
  WxDrivenToggleSheetStyle.resolver(
    DrivenPropertyResolver<WxToggleSheetStyle?> resolver, {
    this.inherits = false,
  })  : selectedStyle = resolver({WidgetEvent.selected}),
        focusedStyle = resolver({WidgetEvent.focused}),
        hoveredStyle = resolver({WidgetEvent.hovered}),
        pressedStyle = resolver({WidgetEvent.pressed}),
        loadingStyle = resolver({WidgetEvent.loading}),
        disabledStyle = resolver({WidgetEvent.disabled}),
        super.from(resolver({}));

  /// Resolves the value for the given set of events
  /// if `value` is an event driven [WxToggleSheetStyle],
  /// otherwise returns the value itself.
  static WxToggleSheetStyle? evaluate(
    WxToggleSheetStyle? value,
    Set<WidgetEvent> events,
  ) =>
      DrivenProperty.evaluate<WxToggleSheetStyle?>(value, events);

  @override
  WxToggleSheetStyle resolve(Set<WidgetEvent> events) {
    WxToggleSheetStyle style = this;
    for (var e in driven.entries) {
      if (events.contains(e.key)) {
        final evaluated = evaluate(e.value, events);
        style = inherits != false
            ? style.merge(evaluated)
            : WxToggleSheetStyle.from(evaluated);
      }
    }
    return style;
  }

  /// Creates a copy of this [WxDrivenToggleSheetStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxDrivenToggleSheetStyle copyWith({
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
    WxToggleSheetStyle? selectedStyle,
    WxToggleSheetStyle? focusedStyle,
    WxToggleSheetStyle? hoveredStyle,
    WxToggleSheetStyle? pressedStyle,
    WxToggleSheetStyle? loadingStyle,
    WxToggleSheetStyle? disabledStyle,
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
    return WxDrivenToggleSheetStyle.from(
      ancestor,
      inherits: inherits ?? this.inherits,
      selectedStyle: this.selectedStyle?.merge(selectedStyle) ?? selectedStyle,
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
    properties.add(DiagnosticsProperty('selectedStyle', selectedStyle));
    properties.add(DiagnosticsProperty('focusedStyle', focusedStyle));
    properties.add(DiagnosticsProperty('hoveredStyle', hoveredStyle));
    properties.add(DiagnosticsProperty('pressedStyle', pressedStyle));
    properties.add(DiagnosticsProperty('disabledStyle', disabledStyle));
  }
}
