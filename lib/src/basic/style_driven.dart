import 'package:flutter/rendering.dart';
import 'package:wx_sheet/wx_event.dart';
import 'style.dart';
import 'style_mixin.dart';
import 'event.dart';

/// Create a [WxSheetStyle] when some events occurs
class WxDrivenSheetStyle extends WxSheetStyle
    with WxDrivenSheetProperty<WxSheetStyle> {
  @override
  final bool? inherits;

  @override
  final WxSheetStyle? selectedStyle;

  @override
  final WxSheetStyle? indeterminateStyle;

  @override
  final WxSheetStyle? focusedStyle;

  @override
  final WxSheetStyle? hoveredStyle;

  @override
  final WxSheetStyle? pressedStyle;

  @override
  final WxSheetStyle? loadingStyle;

  @override
  final WxSheetStyle? disabledStyle;

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
    super.overlayColor,
    super.overlayOpacity,
    super.overlayShape,
    super.overlayExtent,
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
    super.adaptiveForegroundColor,
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
    super.checkmarkColor,
    super.checkmarkSize,
    super.checkmarkWeight,
    super.checkmarkRounded,
    super.spinnerColor,
    super.spinnerBackgroundColor,
    super.spinnerSize,
    super.spinnerWidth,
    super.spinnerRounded,
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

  /// [WxDrivenSheetStyle] with a default value for circle shape.
  const WxDrivenSheetStyle.circle({
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.direction,
    super.variant,
    super.size,
    super.severity,
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
    super.overlayColor,
    super.overlayOpacity,
    super.overlayShape,
    super.overlayExtent,
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
    super.adaptiveForegroundColor,
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
    super.borderStyle,
    super.borderOffset,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.checkmarkColor,
    super.checkmarkSize,
    super.checkmarkWeight,
    super.checkmarkRounded,
    super.spinnerColor,
    super.spinnerBackgroundColor,
    super.spinnerSize,
    super.spinnerWidth,
    super.spinnerRounded,
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
  }) : super.circle();

  /// [WxDrivenSheetStyle] with a default value for full width.
  const WxDrivenSheetStyle.block({
    super.direction,
    super.variant,
    super.size,
    super.severity,
    super.height,
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
    super.overlayColor,
    super.overlayOpacity,
    super.overlayShape,
    super.overlayExtent,
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
    super.adaptiveForegroundColor,
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
    super.checkmarkColor,
    super.checkmarkSize,
    super.checkmarkWeight,
    super.checkmarkRounded,
    super.spinnerColor,
    super.spinnerBackgroundColor,
    super.spinnerSize,
    super.spinnerWidth,
    super.spinnerRounded,
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
  }) : super.block();

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
  })  : selectedStyle = resolver({WxSheetEvent.selected}),
        indeterminateStyle = resolver({WxSheetEvent.indeterminate}),
        focusedStyle = resolver({WxSheetEvent.focused}),
        hoveredStyle = resolver({WxSheetEvent.hovered}),
        pressedStyle = resolver({WxSheetEvent.pressed}),
        loadingStyle = resolver({WxSheetEvent.loading}),
        disabledStyle = resolver({WxSheetEvent.disabled}),
        super.from(resolver({}));

  @override
  resolveInherits(accumulator, style) {
    return inherits != false
        ? accumulator.merge(style)
        : WxSheetStyle.from(style);
  }

  /// Resolves the value for the given set of events
  /// if `value` is an event driven [WxSheetStyle],
  /// otherwise returns the value itself.
  static T evaluate<T extends WxSheetStyle?>(
    T value,
    Set<WidgetEvent> events,
  ) =>
      DrivenProperty.evaluate<T>(value, events);

  /// Creates a copy of this [WxSheetStyle] but with
  /// [padding] is [EdgeInsets.zero] and squared size.
  @override
  WxDrivenSheetStyle asCircle({
    double? radius,
    double? minRadius,
    double? maxRadius,
  }) {
    final ancestor = super.asCircle(
      radius: radius,
      minRadius: minRadius,
      maxRadius: maxRadius,
    );
    return merge(ancestor);
  }

  /// Creates a copy of this [WxSheetStyle] but with
  /// the [width] replaced with [double.infinity].
  @override
  WxDrivenSheetStyle asBlock({
    bool? tileWrap,
    CrossAxisAlignment? tileAlign,
    MainAxisAlignment? tileJustify,
    double? spacing,
  }) {
    final ancestor = super.asBlock(
      tileWrap: tileWrap,
      tileAlign: tileAlign,
      tileJustify: tileJustify,
      spacing: spacing,
    );
    return merge(ancestor);
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
    overlayColor,
    overlayOpacity,
    overlayShape,
    overlayExtent,
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
    adaptiveForegroundColor,
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
    checkmarkColor,
    checkmarkSize,
    checkmarkWeight,
    checkmarkRounded,
    spinnerColor,
    spinnerBackgroundColor,
    spinnerSize,
    spinnerWidth,
    spinnerRounded,
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
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      overlayShape: overlayShape,
      overlayExtent: overlayExtent,
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
      adaptiveForegroundColor: adaptiveForegroundColor,
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
      checkmarkColor: checkmarkColor,
      checkmarkSize: checkmarkSize,
      checkmarkWeight: checkmarkWeight,
      checkmarkRounded: checkmarkRounded,
      spinnerColor: spinnerColor,
      spinnerBackgroundColor: spinnerBackgroundColor,
      spinnerSize: spinnerSize,
      spinnerWidth: spinnerWidth,
      spinnerRounded: spinnerRounded,
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
    super.debugFillDrivenStyle(properties);
  }
}
