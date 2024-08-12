import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';
import 'style_driven.dart';
import 'types.dart';
import 'theme.dart';
import 'theme_data.dart';
import 'theme_parent.dart';
import 'render.dart';

/// The sheet widget serves as the building block for many Widgetarian components,
/// providing a base layer for customization.
class WxSheet<T extends WxSheetThemeData<T>> extends StatelessWidget {
  /// Create a sheet widget
  const WxSheet({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
    this.variant,
    this.size,
    this.severity,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.margin,
    this.padding,
    this.spacing,
    this.adaptiveSpacing,
    this.offset,
    this.scale,
    this.rotate,
    this.flipX,
    this.flipY,
    this.opacity,
    this.alignment,
    this.clipBehavior,
    this.overlay,
    this.overlayColor,
    this.overlayOpacity,
    this.overlayShape,
    this.overlayExtent,
    this.elevationColor,
    this.elevation,
    this.tileAlign,
    this.tileJustify,
    this.tileWrap,
    this.textStyle,
    this.textAlign,
    this.textSpacing,
    this.textColor,
    this.textOverflow,
    this.textSoftWrap,
    this.textWidthBasis,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.borderOffset,
    this.border,
    this.image,
    this.shadows,
    this.gradient,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.checkmarkColor,
    this.checkmarkSize,
    this.checkmarkWeight,
    this.spinnerColor,
    this.spinnerBackgroundColor,
    this.spinnerSize,
    this.spinnerWidth,
    this.spinnerRounded,
    this.titleStyle,
    this.subtitleStyle,
    this.titleSize,
    this.subtitleSize,
    this.titleColor,
    this.subtitleColor,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.titleWeight,
    this.subtitleWeight,
    this.tooltip,
    this.selected = false,
    this.indeterminate = false,
    this.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.focusable,
    this.feedback,
    this.inherits,
    this.mouseCursor,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.indeterminateStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.eventsController,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  });

  /// Create a sheet widget with full width
  const WxSheet.block({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
    this.variant,
    this.size,
    this.severity,
    this.height,
    this.minHeight,
    this.maxHeight,
    this.margin,
    this.padding,
    this.spacing,
    this.adaptiveSpacing,
    this.offset,
    this.scale,
    this.rotate,
    this.flipX,
    this.flipY,
    this.opacity,
    this.alignment,
    this.clipBehavior,
    this.overlay,
    this.overlayColor,
    this.overlayOpacity,
    this.overlayShape,
    this.overlayExtent,
    this.elevationColor,
    this.elevation,
    this.tileAlign,
    this.tileJustify = MainAxisAlignment.spaceBetween,
    this.tileWrap,
    this.textStyle,
    this.textAlign,
    this.textSpacing,
    this.textColor,
    this.textOverflow,
    this.textSoftWrap,
    this.textWidthBasis,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.borderOffset,
    this.border,
    this.image,
    this.shadows,
    this.gradient,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.checkmarkColor,
    this.checkmarkSize,
    this.checkmarkWeight,
    this.spinnerColor,
    this.spinnerBackgroundColor,
    this.spinnerSize,
    this.spinnerWidth,
    this.spinnerRounded,
    this.titleStyle,
    this.subtitleStyle,
    this.titleSize,
    this.subtitleSize,
    this.titleColor,
    this.subtitleColor,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.titleWeight,
    this.subtitleWeight,
    this.tooltip,
    this.selected = false,
    this.indeterminate = false,
    this.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.focusable,
    this.feedback,
    this.inherits,
    this.mouseCursor,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.indeterminateStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.eventsController,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  })  : width = double.infinity,
        minWidth = null,
        maxWidth = null;

  /// Create sheet widget with circle shape
  const WxSheet.circle({
    super.key,
    double? radius,
    double? minRadius,
    double? maxRadius,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
    this.variant,
    this.size,
    this.severity,
    this.margin,
    this.padding,
    this.spacing,
    this.adaptiveSpacing,
    this.offset,
    this.scale,
    this.rotate,
    this.flipX,
    this.flipY,
    this.opacity,
    this.alignment,
    this.clipBehavior,
    this.overlay,
    this.overlayColor,
    this.overlayOpacity,
    this.overlayShape,
    this.overlayExtent,
    this.elevationColor,
    this.elevation,
    this.tileAlign,
    this.tileJustify,
    this.tileWrap,
    this.textStyle,
    this.textAlign,
    this.textSpacing,
    this.textColor,
    this.textOverflow,
    this.textSoftWrap,
    this.textWidthBasis,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.borderOffset,
    this.image,
    this.shadows,
    this.gradient,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.checkmarkColor,
    this.checkmarkSize,
    this.checkmarkWeight,
    this.spinnerColor,
    this.spinnerBackgroundColor,
    this.spinnerSize,
    this.spinnerWidth,
    this.spinnerRounded,
    this.titleStyle,
    this.subtitleStyle,
    this.titleSize,
    this.subtitleSize,
    this.titleColor,
    this.subtitleColor,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.titleWeight,
    this.subtitleWeight,
    this.tooltip,
    this.selected = false,
    this.indeterminate = false,
    this.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.focusable,
    this.feedback,
    this.inherits,
    this.mouseCursor,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.indeterminateStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.eventsController,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  })  : border = const CircleBorder(),
        width = radius != null ? radius * 2 : null,
        height = radius != null ? radius * 2 : null,
        minWidth = minRadius != null ? minRadius * 2 : null,
        maxWidth = maxRadius != null ? maxRadius * 2 : null,
        minHeight = minRadius != null ? minRadius * 2 : null,
        maxHeight = maxRadius != null ? maxRadius * 2 : null;

  /// Create a sheet widget with stadium shape
  const WxSheet.stadium({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
    this.variant,
    this.size,
    this.severity,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.margin,
    this.padding,
    this.spacing,
    this.adaptiveSpacing,
    this.offset,
    this.scale,
    this.rotate,
    this.flipX,
    this.flipY,
    this.opacity,
    this.alignment,
    this.clipBehavior,
    this.overlay,
    this.overlayColor,
    this.overlayOpacity,
    this.overlayShape,
    this.overlayExtent,
    this.elevationColor,
    this.elevation,
    this.tileAlign,
    this.tileJustify,
    this.tileWrap,
    this.textStyle,
    this.textAlign,
    this.textSpacing,
    this.textColor,
    this.textOverflow,
    this.textSoftWrap,
    this.textWidthBasis,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderStyle,
    this.borderOffset,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.checkmarkColor,
    this.checkmarkSize,
    this.checkmarkWeight,
    this.spinnerColor,
    this.spinnerBackgroundColor,
    this.spinnerSize,
    this.spinnerWidth,
    this.spinnerRounded,
    this.titleStyle,
    this.subtitleStyle,
    this.titleSize,
    this.subtitleSize,
    this.titleColor,
    this.subtitleColor,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.titleWeight,
    this.subtitleWeight,
    this.image,
    this.shadows,
    this.gradient,
    this.tooltip,
    this.selected = false,
    this.indeterminate = false,
    this.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.focusable,
    this.feedback,
    this.inherits,
    this.mouseCursor,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.indeterminateStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.eventsController,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  })  : border = const StadiumBorder(),
        borderRadius = null;

  /// {@macro widgetarian.sheet.animated}
  final bool? animated;

  /// {@macro widgetarian.sheet.curve}
  final Curve? curve;

  /// {@macro widgetarian.sheet.duration}
  final Duration? duration;

  /// {@macro widgetarian.sheet.style.direction}
  final Axis? direction;

  /// {@macro widgetarian.sheet.style.variant}
  final WxSheetVariant? variant;

  /// {@macro widgetarian.sheet.style.size}
  final WxSheetSize? size;

  /// {@macro widgetarian.sheet.style.severity}
  final Color? severity;

  /// {@macro widgetarian.sheet.style.width}
  final double? width;

  /// {@macro widgetarian.sheet.style.height}
  final double? height;

  /// {@macro widgetarian.sheet.style.minWidth}
  final double? minWidth;

  /// {@macro widgetarian.sheet.style.maxWidth}
  final double? maxWidth;

  /// {@macro widgetarian.sheet.style.minHeight}
  final double? minHeight;

  /// {@macro widgetarian.sheet.style.maxHeight}
  final double? maxHeight;

  /// {@macro widgetarian.sheet.style.margin}
  final EdgeInsetsGeometry? margin;

  /// {@macro widgetarian.sheet.style.padding}
  final EdgeInsetsGeometry? padding;

  /// {@macro widgetarian.sheet.style.spacing}
  final double? spacing;

  /// {@macro widgetarian.sheet.style.adaptiveSpacing}
  final bool? adaptiveSpacing;

  /// {@macro widgetarian.sheet.style.scale}
  final Offset? offset;

  /// {@macro widgetarian.sheet.style.scale}
  final double? scale;

  /// {@macro widgetarian.sheet.style.rotate}
  final double? rotate;

  /// {@macro widgetarian.sheet.style.flipX}
  final bool? flipX;

  /// {@macro widgetarian.sheet.style.flipY}
  final bool? flipY;

  /// {@macro widgetarian.sheet.style.opacity}
  final double? opacity;

  /// {@macro widgetarian.sheet.style.alignment}
  final Alignment? alignment;

  /// {@macro widgetarian.sheet.style.clipBehavior}
  final Clip? clipBehavior;

  /// {@macro widgetarian.sheet.style.overlayColor}
  final Color? overlayColor;

  /// {@macro widgetarian.sheet.style.overlayOpacity}
  final double? overlayOpacity;

  /// {@macro widgetarian.sheet.style.overlayShape}
  final ShapeBorder? overlayShape;

  /// {@macro widgetarian.sheet.style.overlayExtent}
  final Size? overlayExtent;

  /// {@macro widgetarian.sheet.style.elevationColor}
  final Color? elevationColor;

  /// {@macro widgetarian.sheet.style.elevation}
  final double? elevation;

  /// {@macro widgetarian.sheet.style.tileAlign}
  final CrossAxisAlignment? tileAlign;

  /// {@macro widgetarian.sheet.style.tileJustify}
  final MainAxisAlignment? tileJustify;

  /// {@macro widgetarian.sheet.style.tileWrap}
  final bool? tileWrap;

  /// {@macro widgetarian.sheet.style.textStyle}
  final TextStyle? textStyle;

  /// {@macro widgetarian.sheet.style.textAlign}
  final TextAlign? textAlign;

  /// {@macro widgetarian.sheet.style.textSpacing}
  final double? textSpacing;

  /// {@macro widgetarian.sheet.style.textColor}
  final Color? textColor;

  /// {@macro widgetarian.sheet.style.textOverflow}
  final TextOverflow? textOverflow;

  /// {@macro widgetarian.sheet.style.textSoftWrap}
  final bool? textSoftWrap;

  /// {@macro widgetarian.sheet.style.textWidthBasis}
  final TextWidthBasis? textWidthBasis;

  /// {@macro widgetarian.sheet.style.foregroundColor}
  final Color? foregroundColor;

  /// {@macro widgetarian.sheet.style.foregroundOpacity}
  final double? foregroundOpacity;

  /// {@macro widgetarian.sheet.style.foregroundAlpha}
  final int? foregroundAlpha;

  /// {@macro widgetarian.sheet.style.backgroundColor}
  final Color? backgroundColor;

  /// {@macro widgetarian.sheet.style.backgroundOpacity}
  final double? backgroundOpacity;

  /// {@macro widgetarian.sheet.style.backgroundAlpha}
  final int? backgroundAlpha;

  /// {@macro widgetarian.sheet.style.borderColor}
  final Color? borderColor;

  /// {@macro widgetarian.sheet.style.borderOpacity}
  final double? borderOpacity;

  /// {@macro widgetarian.sheet.style.borderAlpha}
  final int? borderAlpha;

  /// {@macro widgetarian.sheet.style.borderWidth}
  final double? borderWidth;

  /// {@macro widgetarian.sheet.style.borderRadius}
  final BorderRadius? borderRadius;

  /// {@macro widgetarian.sheet.style.borderStyle}
  final BorderStyle? borderStyle;

  /// {@macro widgetarian.sheet.style.borderOffset}
  final double? borderOffset;

  /// {@macro widgetarian.sheet.style.border}
  final OutlinedBorder? border;

  /// {@macro widgetarian.sheet.style.image}
  final DecorationImage? image;

  /// {@macro widgetarian.sheet.style.shadows}
  final List<BoxShadow>? shadows;

  /// {@macro widgetarian.sheet.style.gradient}
  final Gradient? gradient;

  /// {@macro widgetarian.sheet.style.iconColor}
  final Color? iconColor;

  /// {@macro widgetarian.sheet.style.iconOpacity}
  final double? iconOpacity;

  /// {@macro widgetarian.sheet.style.iconSize}
  final double? iconSize;

  /// {@macro widgetarian.sheet.style.checkmarkColor}
  final Color? checkmarkColor;

  /// {@macro widgetarian.sheet.style.checkmarkSize}
  final double? checkmarkSize;

  /// {@macro widgetarian.sheet.style.checkmarkWeight}
  final double? checkmarkWeight;

  /// {@macro widgetarian.sheet.style.spinnerColor}
  final Color? spinnerColor;

  /// {@macro widgetarian.sheet.style.spinnerBackgroundColor}
  final Color? spinnerBackgroundColor;

  /// {@macro widgetarian.sheet.style.spinnerSize}
  final double? spinnerSize;

  /// {@macro widgetarian.sheet.style.spinnerWidth}
  final double? spinnerWidth;

  /// {@macro widgetarian.sheet.style.spinnerRounded}
  final bool? spinnerRounded;

  /// {@macro widgetarian.sheet.style.titleStyle}
  final TextStyle? titleStyle;

  /// {@macro widgetarian.sheet.style.subtitleStyle}
  final TextStyle? subtitleStyle;

  /// {@macro widgetarian.sheet.style.titleSize}
  final double? titleSize;

  /// {@macro widgetarian.sheet.style.subtitleSize}
  final double? subtitleSize;

  /// {@macro widgetarian.sheet.style.titleColor}
  final Color? titleColor;

  /// {@macro widgetarian.sheet.style.subtitleColor}
  final Color? subtitleColor;

  /// {@macro widgetarian.sheet.style.titleMaxLines}
  final int? titleMaxLines;

  /// {@macro widgetarian.sheet.style.subtitleMaxLines}
  final int? subtitleMaxLines;

  /// {@macro widgetarian.sheet.style.titleWeight}
  final FontWeight? titleWeight;

  /// {@macro widgetarian.sheet.style.subtitleWeight}
  final FontWeight? subtitleWeight;

  /// {@macro widgetarian.sheet.tooltip}
  final String? tooltip;

  /// {@macro widgetarian.sheet.selected}
  final bool selected;

  /// {@macro widgetarian.sheet.indeterminate}
  final bool indeterminate;

  /// {@macro widgetarian.sheet.disabled}
  final bool? disabled;

  /// {@macro widgetarian.sheet.loading}
  final bool loading;

  /// {@macro widgetarian.sheet.overlay}
  final bool? overlay;

  /// {@macro widgetarian.sheet.feedback}
  final bool? feedback;

  /// Whether the sheet inherits variant, severity, and size from its parent theme.
  final bool? inherits;

  /// {@macro widgetarian.sheet.mouseCursor}
  final MouseCursor? mouseCursor;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.canRequestFocus}
  final bool? focusable;

  /// {@macro widgetarian.sheet.onPressed}
  final VoidCallback? onPressed;

  /// {@macro widgetarian.sheet.onSelected}
  final ValueChanged<bool>? onSelected;

  /// The style to be applied when events includes [WxSheetEvent.selected].
  final WxSheetStyle? selectedStyle;

  /// The style to be applied when events includes [WxSheetEvent.indeterminate].
  final WxSheetStyle? indeterminateStyle;

  /// The style to be applied when events includes [WxSheetEvent.focused].
  final WxSheetStyle? focusedStyle;

  /// The style to be applied when events includes [WxSheetEvent.hovered].
  final WxSheetStyle? hoveredStyle;

  /// The style to be applied when events includes [WxSheetEvent.pressed].
  final WxSheetStyle? pressedStyle;

  /// The style to be applied when events includes [WxSheetEvent.loading].
  final WxSheetStyle? loadingStyle;

  /// The style to be applied when events includes [WidgetEvent.disabled].
  final WxSheetStyle? disabledStyle;

  /// The style to be applied to the sheet.
  final WxSheetStyle? style;

  /// {@macro widgetarian.sheet.eventsController}
  final WxSheetEventController? eventsController;

  /// {@macro widgetarian.sheet.leading}
  final Widget? leading;

  /// {@macro widgetarian.sheet.trailing}
  final Widget? trailing;

  /// {@macro widgetarian.sheet.title}
  final Widget? title;

  /// {@macro widgetarian.sheet.subtitle}
  final Widget? subtitle;

  /// {@macro widgetarian.sheet.child}
  final Widget? child;

  /// Retrieves the effective style based on the provided properties.
  ///
  /// This getter combines the default style with the specified `style` and
  /// other properties to create the final style applied to the widget. It merges
  /// the provided styles with the default values and applies any overrides.
  ///
  /// Returns the calculated `WxSheetStyle` instance.
  WxSheetStyle get effectiveStyle {
    return const WxDrivenSheetStyle().merge(style).copyWith(
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
          checkmarkColor: checkmarkColor,
          checkmarkSize: checkmarkSize,
          checkmarkWeight: checkmarkWeight,
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
          indeterminateStyle: indeterminateStyle,
          selectedStyle: selectedStyle,
          focusedStyle: focusedStyle,
          hoveredStyle: hoveredStyle,
          pressedStyle: pressedStyle,
          disabledStyle: disabledStyle,
          loadingStyle: loadingStyle,
        );
  }

  /// Retrieves the `WxSheetThemeData` for the given `BuildContext`.
  ///
  /// This method fetches the `WxSheetThemeData` associated with the provided
  /// `BuildContext`. It's typically used to access theme-related properties
  /// within a widget tree.
  ///
  /// Returns the `WxSheetThemeData` instance.
  @protected
  WxSheetThemeData<T> getTheme(BuildContext context) {
    return WxSheetTheme.of<T>(context);
  }

  @protected
  WxSheetThemeData<WxSheetThemeParent>? getParentTheme(BuildContext context) {
    return WxSheetTheme.maybeOf<WxSheetThemeParent>(context);
  }

  @protected
  WxSheetStyle? getParentStyle(BuildContext context) {
    if (variant == null || severity == null || size == null) {
      return getParentTheme(context)?.style;
    }
    return null;
  }

  @protected
  WxSheetStyle getInheritedStyle(BuildContext context, bool inherits) {
    if (inherits) {
      final parentStyle = getParentStyle(context);
      return const WxDrivenSheetStyle()
          .merge(parentStyle)
          .merge(effectiveStyle);
    }
    return effectiveStyle;
  }

  /// A function used to wrap the sheet anchor (advanced usage).
  @protected
  WxSheetWrapper? get anchorBuilder => null;

  /// A function used to wrap the sheet content (advanced usage).
  @protected
  WxSheetWrapper? get outerWrapper => null;

  /// A function used to wrap the entire sheet (advanced usage).
  @protected
  WxSheetWrapper? get innerWrapper => null;

  /// A function that modifies the `WxSheetStyle` before applying it to the sheet.
  ///
  /// This function can be used to customize the sheet's appearance based on specific
  /// conditions or requirements. It receives the original `WxSheetStyle` as input
  /// and returns a potentially modified `WxSheetStyle`.
  @protected
  ValueForwarder<WxSheetStyle>? get styleModifier => null;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    final actualDisabled = disabled ?? theme.disabled;
    final actualOverlay = overlay ?? theme.overlay;
    final actualFocusable = focusable ?? theme.focusable;
    final actualFeedback = feedback ?? theme.feedback;
    final actualInherits = inherits ?? theme.inherits;
    final actualMouseCursor = mouseCursor ?? theme.mouseCursor;
    final actualLeading = leading ?? theme.leading;
    final actualTrailing = trailing ?? theme.trailing;
    return WxSheetRender(
      eventsController: eventsController,
      animated: animated ?? theme.animated,
      curve: curve ?? theme.curve,
      duration: duration ?? theme.duration,
      disabled: actualDisabled,
      selected: selected,
      indeterminate: indeterminate,
      loading: loading,
      autofocus: autofocus,
      focusNode: focusNode,
      focusable: actualFocusable,
      feedback: actualFeedback,
      mouseCursor: actualMouseCursor,
      overlay: actualOverlay,
      style: getInheritedStyle(context, actualInherits),
      styleResolver: theme.resolve,
      tooltip: tooltip,
      onPressed: onPressed,
      onSelected: onSelected,
      anchorBuilder: anchorBuilder,
      outerWrapper: outerWrapper,
      innerWrapper: innerWrapper,
      styleModifier: styleModifier,
      leading: actualLeading,
      trailing: actualTrailing,
      title: title,
      subtitle: subtitle,
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('animated', animated));
    properties.add(DiagnosticsProperty('disabled', disabled));
    properties.add(DiagnosticsProperty('selected', selected));
    properties.add(DiagnosticsProperty('loading', loading));
    properties.add(DiagnosticsProperty('autofocus', autofocus));
    properties.add(DiagnosticsProperty('curve', curve));
    properties.add(DiagnosticsProperty('duration', duration));
    properties.add(DiagnosticsProperty('tooltip', tooltip));
    properties.add(DiagnosticsProperty('style', style));
    properties.add(DiagnosticsProperty('effectiveStyle', effectiveStyle));
  }
}
