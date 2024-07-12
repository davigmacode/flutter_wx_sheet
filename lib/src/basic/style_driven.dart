import 'package:flutter/foundation.dart';
import 'package:widget_event/widget_event.dart';
import 'style.dart';
import 'event.dart';

/// Create a [WxSheetStyle] when some events occurs
class WxDrivenSheetStyle extends WxSheetStyle
    implements DrivenProperty<WxSheetStyle?> {
  /// Whether the resolved style is merged to
  /// the previous resolved style or not
  final bool? inherits;

  /// The style to be resolved when
  /// events includes [WxSheetEvent.selected].
  final WxSheetStyle? selectedStyle;

  /// The style to be resolved when
  /// events includes [WxSheetEvent.indeterminate].
  final WxSheetStyle? indeterminateStyle;

  /// The style to be resolved when
  /// events includes [WxSheetEvent.focused].
  final WxSheetStyle? focusedStyle;

  /// The style to be resolved when
  /// events includes [WxSheetEvent.hovered].
  final WxSheetStyle? hoveredStyle;

  /// The style to be resolved when
  /// events includes [WxSheetEvent.pressed].
  final WxSheetStyle? pressedStyle;

  /// The style to be resolved when
  /// events includes [WxSheetEvent.loading].
  final WxSheetStyle? loadingStyle;

  /// The style to be resolved when
  /// events includes [WxSheetEvent.disabled].
  final WxSheetStyle? disabledStyle;

  /// Map of driven style, order matters
  Map<WidgetEvent, WxSheetStyle?> get driven => {
        WidgetEvent.selected: selectedStyle,
        WidgetEvent.indeterminate: indeterminateStyle,
        WidgetEvent.focused: focusedStyle,
        WidgetEvent.hovered: hoveredStyle,
        WidgetEvent.pressed: pressedStyle,
        WidgetEvent.loading: loadingStyle,
        WidgetEvent.disabled: disabledStyle,
      };

  /// Create a raw [WxDrivenSheetStyle].
  const WxDrivenSheetStyle({
    super.direction,
    super.variant,
    super.size,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.offset,
    super.scale,
    super.rotate,
    super.flipX,
    super.flipY,
    super.opacity,
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.surfaceTint,
    super.elevationColor,
    super.elevation,
    super.tileAlign,
    super.tileJustify,
    super.tileWrap,
    super.textStyle,
    super.textAlign,
    super.textSpacing,
    super.textColor,
    super.textOverflow,
    super.textSoftWrap,
    super.textWidthBasis,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
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
    super.titleStyle,
    super.subtitleStyle,
    super.titleSize,
    super.subtitleSize,
    super.titleColor,
    super.subtitleColor,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.titleWeight,
    super.subtitleWeight,
    this.selectedStyle,
    this.indeterminateStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  });

  /// Create a [WxDrivenSheetStyle] with value
  /// from another [WxSheetStyle].
  WxDrivenSheetStyle.fromAncestor(
    super.enabled, {
    this.selectedStyle,
    this.indeterminateStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  }) : super.from();

  /// Create a [WxDrivenSheetStyle] with value
  /// from another [WxDrivenSheetStyle].
  WxDrivenSheetStyle.from(WxDrivenSheetStyle super.other)
      : selectedStyle = other.selectedStyle,
        indeterminateStyle = other.indeterminateStyle,
        focusedStyle = other.focusedStyle,
        hoveredStyle = other.hoveredStyle,
        pressedStyle = other.pressedStyle,
        loadingStyle = other.loadingStyle,
        disabledStyle = other.disabledStyle,
        inherits = other.inherits,
        super.from();

  /// Create a [WxDrivenSheetStyle] from a resolver callback
  WxDrivenSheetStyle.resolver(
    DrivenPropertyResolver<WxSheetStyle?> resolver, {
    this.inherits = false,
  })  : selectedStyle = resolver({WidgetEvent.selected}),
        indeterminateStyle = resolver({WidgetEvent.indeterminate}),
        focusedStyle = resolver({WidgetEvent.focused}),
        hoveredStyle = resolver({WidgetEvent.hovered}),
        pressedStyle = resolver({WidgetEvent.pressed}),
        loadingStyle = resolver({WidgetEvent.loading}),
        disabledStyle = resolver({WidgetEvent.disabled}),
        super.from(resolver({}));

  /// Resolves the value for the given set of events
  /// if `value` is an event driven [WxSheetStyle],
  /// otherwise returns the value itself.
  static WxSheetStyle? evaluate(
    WxSheetStyle? value,
    Set<WidgetEvent> events,
  ) =>
      DrivenProperty.evaluate<WxSheetStyle?>(value, events);

  @override
  WxSheetStyle resolve(Set<WidgetEvent> events) {
    WxSheetStyle style = this;
    for (var e in driven.entries) {
      if (events.contains(e.key)) {
        final evaluated = evaluate(e.value, events);
        style = inherits != false
            ? style.merge(evaluated)
            : WxSheetStyle.from(evaluated);
      }
    }
    return style;
  }

  /// Creates a copy of this [WxDrivenSheetStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxDrivenSheetStyle copyWith({
    direction,
    variant,
    size,
    severity,
    width,
    height,
    minWidth,
    maxWidth,
    minHeight,
    maxHeight,
    margin,
    padding,
    spacing,
    adaptiveSpacing,
    offset,
    scale,
    rotate,
    flipX,
    flipY,
    opacity,
    alignment,
    clipBehavior,
    overlayDisabled,
    overlayColor,
    overlayOpacity,
    surfaceTint,
    elevationColor,
    elevation,
    tileAlign,
    tileJustify,
    tileWrap,
    textStyle,
    textAlign,
    textSpacing,
    textColor,
    textOverflow,
    textSoftWrap,
    textWidthBasis,
    foregroundColor,
    foregroundOpacity,
    foregroundAlpha,
    backgroundColor,
    backgroundOpacity,
    backgroundAlpha,
    borderColor,
    borderOpacity,
    borderAlpha,
    borderWidth,
    borderRadius,
    borderStyle,
    borderOffset,
    border,
    image,
    shadows,
    gradient,
    iconColor,
    iconOpacity,
    iconSize,
    titleStyle,
    subtitleStyle,
    titleSize,
    subtitleSize,
    titleColor,
    subtitleColor,
    titleMaxLines,
    subtitleMaxLines,
    titleWeight,
    subtitleWeight,
    bool? inherits,
    WxSheetStyle? selectedStyle,
    WxSheetStyle? indeterminateStyle,
    WxSheetStyle? focusedStyle,
    WxSheetStyle? hoveredStyle,
    WxSheetStyle? pressedStyle,
    WxSheetStyle? loadingStyle,
    WxSheetStyle? disabledStyle,
  }) {
    final ancestor = super.copyWith(
      direction: direction,
      variant: variant,
      size: size,
      severity: severity,
      width: width,
      height: height,
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
      margin: margin,
      padding: padding,
      spacing: spacing,
      adaptiveSpacing: adaptiveSpacing,
      offset: offset,
      scale: scale,
      rotate: rotate,
      flipX: flipX,
      flipY: flipY,
      opacity: opacity,
      alignment: alignment,
      clipBehavior: clipBehavior,
      overlayDisabled: overlayDisabled,
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      surfaceTint: surfaceTint,
      elevationColor: elevationColor,
      elevation: elevation,
      tileAlign: tileAlign,
      tileJustify: tileJustify,
      tileWrap: tileWrap,
      textStyle: textStyle,
      textAlign: textAlign,
      textSpacing: textSpacing,
      textColor: textColor,
      textOverflow: textOverflow,
      textSoftWrap: textSoftWrap,
      textWidthBasis: textWidthBasis,
      foregroundColor: foregroundColor,
      foregroundOpacity: foregroundOpacity,
      foregroundAlpha: foregroundAlpha,
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
      titleStyle: titleStyle,
      subtitleStyle: subtitleStyle,
      titleSize: titleSize,
      subtitleSize: subtitleSize,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      titleWeight: titleWeight,
      subtitleWeight: subtitleWeight,
    );
    return WxDrivenSheetStyle.fromAncestor(
      ancestor,
      inherits: inherits ?? this.inherits,
      selectedStyle: this.selectedStyle?.merge(selectedStyle) ?? selectedStyle,
      indeterminateStyle: this.indeterminateStyle?.merge(indeterminateStyle) ??
          indeterminateStyle,
      focusedStyle: this.focusedStyle?.merge(focusedStyle) ?? focusedStyle,
      hoveredStyle: this.hoveredStyle?.merge(hoveredStyle) ?? hoveredStyle,
      pressedStyle: this.pressedStyle?.merge(pressedStyle) ?? pressedStyle,
      loadingStyle: this.loadingStyle?.merge(loadingStyle) ?? loadingStyle,
      disabledStyle: this.disabledStyle?.merge(disabledStyle) ?? disabledStyle,
    );
  }

  @override
  WxDrivenSheetStyle merge(WxSheetStyle? other) {
    final ancestor = super.merge(other);
    final result = WxDrivenSheetStyle.fromAncestor(
      ancestor,
      inherits: inherits,
      selectedStyle: selectedStyle,
      indeterminateStyle: indeterminateStyle,
      focusedStyle: focusedStyle,
      hoveredStyle: hoveredStyle,
      pressedStyle: pressedStyle,
      disabledStyle: disabledStyle,
    );
    if (other is WxDrivenSheetStyle) {
      return result.copyWith(
        inherits: other.inherits,
        selectedStyle: other.selectedStyle,
        indeterminateStyle: other.indeterminateStyle,
        focusedStyle: other.focusedStyle,
        hoveredStyle: other.hoveredStyle,
        pressedStyle: other.pressedStyle,
        disabledStyle: other.disabledStyle,
      );
    }
    return result;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('inherits', inherits));
    properties.add(DiagnosticsProperty('selectedStyle', selectedStyle));
    properties
        .add(DiagnosticsProperty('indeterminateStyle', indeterminateStyle));
    properties.add(DiagnosticsProperty('focusedStyle', focusedStyle));
    properties.add(DiagnosticsProperty('hoveredStyle', hoveredStyle));
    properties.add(DiagnosticsProperty('pressedStyle', pressedStyle));
    properties.add(DiagnosticsProperty('disabledStyle', disabledStyle));
  }
}
