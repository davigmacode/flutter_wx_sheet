import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:wx_sheet/src/basic/main.dart';
import 'style.dart';
import 'theme.dart';
import 'render.dart';

/// Buttons allow users to take actions, and make choices, with a single tap
class WxTapSheet extends WxSheet {
  /// Create a button
  const WxTapSheet({
    super.key,
    super.duration,
    super.curve,
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
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
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
    super.style,
    super.tooltip,
    super.wrapper,
    super.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.eventsController,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.leading,
    this.trailing,
    required Widget super.child,
  }) : extraStyle = null;

  /// Create a sheet widget with square size
  const WxTapSheet.square({
    super.key,
    super.duration,
    super.curve,
    super.variant,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
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
    super.style,
    super.tooltip,
    super.wrapper,
    super.size,
    super.minSize,
    super.maxSize,
    super.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.eventsController,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.leading,
    this.trailing,
    required Widget super.child,
  })  : extraStyle = null,
        super.square();

  /// Create a sheet widget with circle shape
  const WxTapSheet.circle({
    super.key,
    super.duration,
    super.curve,
    super.variant,
    super.severity,
    super.margin,
    super.padding,
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
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
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.style,
    super.tooltip,
    super.wrapper,
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.eventsController,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.leading,
    this.trailing,
    required Widget super.child,
  })  : extraStyle = null,
        super.circle();

  /// Create a sheet widget with stadium shape
  const WxTapSheet.stadium({
    super.key,
    super.duration,
    super.curve,
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
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.foregroundStyle,
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
    super.style,
    super.tooltip,
    super.wrapper,
    super.disabled,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.eventsController,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.leading,
    this.trailing,
    required Widget super.child,
  })  : extraStyle = null,
        super.stadium();

  /// {@macro widgetarian.button.leading}
  final Widget? leading;

  /// {@macro widgetarian.button.trailing}
  final Widget? trailing;

  /// {@macro widgetarian.button.loading}
  final bool loading;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro widgetarian.button.onPressed}
  final VoidCallback? onPressed;

  /// The style to be applied when events includes [WidgetEvent.focused].
  final WxTapSheetStyle? focusedStyle;

  /// The style to be applied when events includes [WidgetEvent.hovered].
  final WxTapSheetStyle? hoveredStyle;

  /// The style to be applied when events includes [WidgetEvent.pressed].
  final WxTapSheetStyle? pressedStyle;

  /// The style to be applied when events includes [WidgetEvent.loading].
  final WxTapSheetStyle? loadingStyle;

  /// The style to be applied when events includes [WidgetEvent.disabled].
  final WxTapSheetStyle? disabledStyle;

  /// {@macro widgetarian.button.eventsController}
  final WxSheetEventController? eventsController;

  /// Additional style to be merge with [style]
  final WxTapSheetStyle? extraStyle;

  /// The [style] merged with [extraStyle]
  @override
  WxTapSheetStyle get effectiveStyle => WxDrivenTapSheetStyle.from(
        WxTapSheetStyle.fromAncestor(super.effectiveStyle),
        focusedStyle: focusedStyle,
        hoveredStyle: hoveredStyle,
        pressedStyle: pressedStyle,
        loadingStyle: loadingStyle,
        disabledStyle: disabledStyle,
      ).merge(extraStyle);

  @override
  Widget build(BuildContext context) {
    return WxTapSheetRender(
      curve: curve,
      duration: duration,
      theme: WxTapSheetTheme.of(context),
      style: effectiveStyle,
      variant: variant,
      severity: severity,
      loading: loading,
      disabled: disabled,
      autofocus: autofocus,
      focusNode: focusNode,
      onPressed: onPressed,
      eventsController: eventsController,
      leading: leading,
      trailing: trailing,
      tooltip: tooltip,
      child: child!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('loading', loading));
    properties.add(DiagnosticsProperty('autofocus', autofocus));
    properties.add(DiagnosticsProperty('effectiveStyle', effectiveStyle));
  }
}
