import 'package:flutter/widgets.dart';
import 'types.dart';
import 'widget.dart';

/// Create a sheet widget with default value for toned style.
class WxTonalSheet extends WxSheet {
  @override
  get variant => WxSheetVariant.tonal;

  /// Create a tonal sheet widget
  const WxTonalSheet({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.width,
    super.height,
    super.margin,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super(
          backgroundColor: color,
          foregroundColor: color,
        );

  /// Create a square sheet widget with toned style
  const WxTonalSheet.square({
    super.key,
    Color? color,
    super.size,
    super.minSize,
    super.maxSize,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.square(
          backgroundColor: color,
          foregroundColor: color,
        );

  /// Create a tonal sheet widget with circle border
  const WxTonalSheet.circle({
    super.key,
    Color? color,
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.circle(
          backgroundColor: color,
          foregroundColor: color,
        );

  /// Create a tonal sheet widget with stadium border
  const WxTonalSheet.stadium({
    super.key,
    Color? color,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.stadium(
          backgroundColor: color,
          foregroundColor: color,
        );

  /// Create a tonal sheet widget with danger severity
  const WxTonalSheet.danger({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.danger(
          backgroundColor: color,
          foregroundColor: color,
        );

  /// Create a tonal sheet widget with warning severity
  const WxTonalSheet.warning({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.variant,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.warning(
          backgroundColor: color,
          foregroundColor: color,
        );

  /// Create a tonal sheet widget with success severity
  const WxTonalSheet.success({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.variant,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.success(
          backgroundColor: color,
          foregroundColor: color,
        );

  /// Create a tonal sheet widget with info severity
  const WxTonalSheet.info({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.variant,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.info(
          backgroundColor: color,
          foregroundColor: color,
        );
}

/// Create a sheet widget with default value for elevated style.
class WxElevatedSheet extends WxSheet {
  @override
  get variant => WxSheetVariant.elevated;

  /// Create an elevated sheet widget.
  const WxElevatedSheet({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super(backgroundColor: color);

  /// Create a square sheet widget with default value for elevated style.
  const WxElevatedSheet.square({
    super.key,
    Color? color,
    super.size,
    super.minSize,
    super.maxSize,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.square(backgroundColor: color);

  /// Create an elevated sheet widget with circle border.
  const WxElevatedSheet.circle({
    super.key,
    Color? color,
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.circle(backgroundColor: color);

  /// Create an elevated sheet widget with stadium border.
  const WxElevatedSheet.stadium({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.stadium(backgroundColor: color);

  /// Create an elevated sheet widget with danger severity.
  const WxElevatedSheet.danger({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.danger(backgroundColor: color);

  /// Create an elevated sheet widget with warning severity.
  const WxElevatedSheet.warning({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.warning(backgroundColor: color);

  /// Create an elevated sheet widget with success severity.
  const WxElevatedSheet.success({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.success(backgroundColor: color);

  /// Create an elevated sheet widget with info severity.
  const WxElevatedSheet.info({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.info(backgroundColor: color);
}

/// Create a sheet widget with default value for filled style.
class WxFilledSheet extends WxSheet {
  @override
  get variant => WxSheetVariant.filled;

  /// Create a filled sheet widget.
  const WxFilledSheet({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super(backgroundColor: color);

  /// Create a square sheet widget with default value for filled style.
  const WxFilledSheet.square({
    super.key,
    Color? color,
    super.size,
    super.minSize,
    super.maxSize,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.square(backgroundColor: color);

  /// Create a filled sheet widget with circle border.
  const WxFilledSheet.circle({
    super.key,
    Color? color,
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.circle(backgroundColor: color);

  /// Create a filled sheet widget with stadium border.
  const WxFilledSheet.stadium({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.stadium(backgroundColor: color);

  /// Create a filled sheet widget with danger severity.
  const WxFilledSheet.danger({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.danger(backgroundColor: color);

  /// Create a filled sheet widget with warning severity.
  const WxFilledSheet.warning({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.warning(backgroundColor: color);

  /// Create a filled sheet widget with success severity.
  const WxFilledSheet.success({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.success(backgroundColor: color);

  /// Create a filled sheet widget with info severity.
  const WxFilledSheet.info({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.info(backgroundColor: color);
}

/// Create a sheet widget with default value for outlined style.
class WxOutlinedSheet extends WxSheet {
  @override
  get variant => WxSheetVariant.outlined;

  /// Create an outlined sheet widget.
  const WxOutlinedSheet({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super(backgroundColor: color);

  /// Create a square sheet widget with default value for outlined style.
  const WxOutlinedSheet.square({
    super.key,
    Color? color,
    super.size,
    super.minSize,
    super.maxSize,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.square(backgroundColor: color);

  /// Create an outlined sheet widget with circle border.
  const WxOutlinedSheet.circle({
    super.key,
    Color? color,
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.animated,
    super.duration,
    super.curve,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.circle(backgroundColor: color);

  /// Create an outlined sheet widget with stadium border.
  const WxOutlinedSheet.stadium({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.stadium(backgroundColor: color);

  /// Create an outlined sheet widget with danger severity.
  const WxOutlinedSheet.danger({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.danger(backgroundColor: color);

  /// Create an outlined sheet widget with warning severity.
  const WxOutlinedSheet.warning({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.warning(backgroundColor: color);

  /// Create an outlined sheet widget with success severity.
  const WxOutlinedSheet.success({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.success(backgroundColor: color);

  /// Create an outlined sheet widget with info severity.
  const WxOutlinedSheet.info({
    super.key,
    Color? color,
    super.animated,
    super.duration,
    super.curve,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayColor,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.border,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.child,
  }) : super.info(backgroundColor: color);
}
