import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';
import 'style_driven.dart';
import 'types.dart';
import 'theme.dart';
import 'theme_data.dart';
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
    this.variant,
    this.severity,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
    this.elevationColor,
    this.elevation,
    this.textStyle,
    this.textAlign,
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
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.child,
  });

  /// Create a sheet widget with square size
  const WxSheet.square({
    super.key,
    double? size,
    double? minSize,
    double? maxSize,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.severity,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
    this.elevationColor,
    this.elevation,
    this.textStyle,
    this.textAlign,
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
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.child,
  })  : width = size,
        height = size,
        minWidth = minSize,
        maxWidth = maxSize,
        minHeight = minSize,
        maxHeight = maxSize;

  /// Create sheet widget with circle shape
  const WxSheet.circle({
    super.key,
    double? radius,
    double? minRadius,
    double? maxRadius,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.severity,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
    this.elevationColor,
    this.elevation,
    this.textStyle,
    this.textAlign,
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
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
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
    this.variant,
    this.severity,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
    this.elevationColor,
    this.elevation,
    this.textStyle,
    this.textAlign,
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
    this.image,
    this.shadows,
    this.gradient,
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.child,
  })  : border = const StadiumBorder(),
        borderRadius = null;

  /// Whether to animate the sheet decoration.
  final bool? animated;

  /// The curve to apply when animating the parameters of this widget.
  final Curve? curve;

  /// The duration over which to animate the parameters of this widget.
  final Duration? duration;

  /// {@macro widgetarian.sheet.style.variant}
  final WxSheetVariant? variant;

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

  /// {@macro widgetarian.sheet.style.alignment}
  final Alignment? alignment;

  /// {@macro widgetarian.sheet.style.clipBehavior}
  final Clip? clipBehavior;

  /// {@macro widgetarian.sheet.style.overlayDisabled}
  final bool? overlayDisabled;

  /// {@macro widgetarian.sheet.style.overlayColor}
  final Color? overlayColor;

  /// {@macro widgetarian.sheet.style.overlayOpacity}
  final double? overlayOpacity;

  /// {@macro widgetarian.sheet.style.elevationColor}
  final Color? elevationColor;

  /// {@macro widgetarian.sheet.style.elevation}
  final double? elevation;

  /// {@macro widgetarian.sheet.style.textStyle}
  final TextStyle? textStyle;

  /// {@macro widgetarian.sheet.style.textAlign}
  final TextAlign? textAlign;

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

  /// Tooltip string to be used for the body area of the button.
  final String? tooltip;

  /// Called to build an extra wrapper.
  final WxSheetBuilder<T>? wrapper;

  /// Whether or not this sheet widget is in selected state.
  final bool selected;

  /// Whether or not this sheet widget is in disabled state.
  final bool disabled;

  /// {@macro widgetarian.button.loading}
  final bool loading;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro widgetarian.button.onPressed}
  final VoidCallback? onPressed;

  /// {@macro widgetarian.button.onSelected}
  final ValueChanged<bool>? onSelected;

  /// The style to be applied when events includes [WidgetEvent.selected].
  final WxSheetStyle? selectedStyle;

  /// The style to be applied when events includes [WidgetEvent.focused].
  final WxSheetStyle? focusedStyle;

  /// The style to be applied when events includes [WidgetEvent.hovered].
  final WxSheetStyle? hoveredStyle;

  /// The style to be applied when events includes [WidgetEvent.pressed].
  final WxSheetStyle? pressedStyle;

  /// The style to be applied when events includes [WidgetEvent.loading].
  final WxSheetStyle? loadingStyle;

  /// The style to be applied when events includes [WidgetEvent.disabled].
  final WxSheetStyle? disabledStyle;

  /// The style to be applied to the sheet.
  final WxSheetStyle? style;

  /// The widget below this widget in the tree.
  final Widget? child;

  /// Sheet style that merge [style] with all shortcut properties
  WxSheetStyle get effectiveStyle {
    return WxDrivenSheetStyle.fromAncestor(style).copyWith(
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
      alignment: alignment,
      clipBehavior: clipBehavior,
      overlayDisabled: overlayDisabled,
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      elevationColor: elevationColor,
      elevation: elevation,
      textStyle: textStyle,
      textAlign: textAlign,
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
      selectedStyle: selectedStyle,
      focusedStyle: focusedStyle,
      hoveredStyle: hoveredStyle,
      pressedStyle: pressedStyle,
      disabledStyle: disabledStyle,
    );
  }

  WxSheetThemeData<T> getThemeData(BuildContext context) {
    return WxSheetTheme.of<T>(context);
  }

  @override
  Widget build(BuildContext context) {
    return WxSheetRender<T>(
      animated: animated,
      disabled: disabled,
      selected: selected,
      loading: loading,
      autofocus: autofocus,
      focusNode: focusNode,
      curve: curve,
      duration: duration,
      style: effectiveStyle,
      theme: getThemeData(context),
      tooltip: tooltip,
      wrapper: wrapper,
      onPressed: onPressed,
      onSelected: onSelected,
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
    properties.add(DiagnosticsProperty('wrapper', wrapper));
    properties.add(DiagnosticsProperty('style', style));
    properties.add(DiagnosticsProperty('effectiveStyle', effectiveStyle));
  }
}
