import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';
import 'types.dart';
import 'wrapper.dart';
import 'theme.dart';
import 'render.dart';

/// The sheet widget serves as the building block for many Widgetarian components,
/// providing a base layer for customization.
class WxSheet extends StatelessWidget {
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
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.shape,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  });

  /// Create a sheet widget with square size
  const WxSheet.square({
    super.key,
    double? size,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.severity,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  })  : shape = WxSheetShape.rectangle,
        width = size,
        height = size;

  /// Create sheet widget with circle shape
  const WxSheet.circle({
    super.key,
    double? radius,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.severity,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  })  : shape = WxSheetShape.circle,
        width = radius != null ? radius * 2 : null,
        height = radius != null ? radius * 2 : null;

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
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  }) : shape = WxSheetShape.stadium;

  /// Create a sheet widget with danger severity
  const WxSheet.danger({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.shape,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  }) : severity = WxSheetSeverity.danger;

  /// Create a sheet widget with warning severity
  const WxSheet.warning({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.shape,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  }) : severity = WxSheetSeverity.warning;

  /// Create a sheet widget with success severity
  const WxSheet.success({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.shape,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  }) : severity = WxSheetSeverity.success;

  /// Create a sheet widget with danger severity
  const WxSheet.info({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.variant,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    this.clipBehavior,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.foregroundStyle,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.foregroundSpacing,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.shape,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.style,
    this.tooltip,
    this.wrapper,
    this.child,
  }) : severity = WxSheetSeverity.info;

  /// Whether to animate the sheet decoration.
  final bool? animated;

  /// The curve to apply when animating the parameters of this widget.
  final Curve? curve;

  /// The duration over which to animate the parameters of this widget.
  final Duration? duration;

  /// {@macro widgetarian.sheet.style.variant}
  final WxSheetVariant? variant;

  /// {@macro widgetarian.sheet.style.severity}
  final WxSheetSeverity? severity;

  /// {@macro widgetarian.sheet.style.width}
  final double? width;

  /// {@macro widgetarian.sheet.style.height}
  final double? height;

  /// {@macro widgetarian.sheet.style.margin}
  final EdgeInsetsGeometry? margin;

  /// {@macro widgetarian.sheet.style.padding}
  final EdgeInsetsGeometry? padding;

  /// {@macro widgetarian.sheet.style.alignment}
  final Alignment? alignment;

  /// {@macro widgetarian.sheet.style.clipBehavior}
  final Clip? clipBehavior;

  /// {@macro widgetarian.sheet.style.overlayColor}
  final Color? overlayColor;

  /// {@macro widgetarian.sheet.style.shadowColor}
  final Color? shadowColor;

  /// {@macro widgetarian.sheet.style.elevation}
  final double? elevation;

  /// {@macro widgetarian.sheet.style.foregroundStyle}
  final TextStyle? foregroundStyle;

  /// {@macro widgetarian.sheet.style.foregroundColor}
  final Color? foregroundColor;

  /// {@macro widgetarian.sheet.style.foregroundOpacity}
  final double? foregroundOpacity;

  /// {@macro widgetarian.sheet.style.foregroundAlpha}
  final int? foregroundAlpha;

  /// {@macro widgetarian.sheet.style.foregroundSpacing}
  final double? foregroundSpacing;

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

  /// {@macro widgetarian.sheet.style.shape}
  final WxSheetShape? shape;

  /// {@macro widgetarian.sheet.style.iconColor}
  final Color? iconColor;

  /// {@macro widgetarian.sheet.style.iconOpacity}
  final double? iconOpacity;

  /// {@macro widgetarian.sheet.style.iconSize}
  final double? iconSize;

  /// The style to be applied to the sheet.
  final WxSheetStyle? style;

  /// Tooltip string to be used for the body area of the button.
  final String? tooltip;

  /// Called to build an extra wrapper.
  final WxSheetBuilder? wrapper;

  /// The widget below this widget in the tree.
  final Widget? child;

  WxSheetStyle get effectiveStyle {
    return WxSheetStyle.from(style).copyWith(
      variant: variant,
      severity: severity,
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      clipBehavior: clipBehavior,
      overlayColor: overlayColor,
      shadowColor: shadowColor,
      elevation: elevation,
      foregroundStyle: foregroundStyle,
      foregroundColor: foregroundColor,
      foregroundOpacity: foregroundOpacity,
      foregroundAlpha: foregroundAlpha,
      foregroundSpacing: foregroundSpacing,
      backgroundColor: backgroundColor,
      backgroundOpacity: backgroundOpacity,
      backgroundAlpha: backgroundAlpha,
      borderColor: borderColor,
      borderOpacity: borderOpacity,
      borderAlpha: borderAlpha,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderStyle: borderStyle,
      shape: shape,
      iconColor: iconColor,
      iconOpacity: iconOpacity,
      iconSize: iconSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SheetRender(
      animated: animated,
      curve: curve,
      duration: duration,
      style: effectiveStyle,
      theme: WxSheetTheme.of(context),
      tooltip: tooltip,
      wrapper: wrapper,
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<WxSheetStyle?>('style', style));
    properties.add(
        DiagnosticsProperty<WxSheetStyle>('effectiveStyle', effectiveStyle));
  }
}
