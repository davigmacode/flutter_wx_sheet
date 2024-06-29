import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:wx_sheet/src/legacy_basic/main.dart';
import 'style.dart';
import 'theme.dart';
import 'render.dart';

/// Buttons allow users to take actions, and make choices, with a single tap
class WxToggleSheet extends WxSheet {
  /// Create a button
  const WxToggleSheet({
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
    super.selected,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.eventsController,
    this.selectedStyle,
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
  const WxToggleSheet.square({
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
    super.selected,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.eventsController,
    this.selectedStyle,
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
  const WxToggleSheet.circle({
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
    super.selected,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.eventsController,
    this.selectedStyle,
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
  const WxToggleSheet.stadium({
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
    super.selected,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.eventsController,
    this.selectedStyle,
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

  /// {@macro widgetarian.button.onSelected}
  final ValueChanged<bool>? onSelected;

  /// The style to be applied when events includes [WidgetEvent.selected].
  final WxToggleSheetStyle? selectedStyle;

  /// The style to be applied when events includes [WidgetEvent.focused].
  final WxToggleSheetStyle? focusedStyle;

  /// The style to be applied when events includes [WidgetEvent.hovered].
  final WxToggleSheetStyle? hoveredStyle;

  /// The style to be applied when events includes [WidgetEvent.pressed].
  final WxToggleSheetStyle? pressedStyle;

  /// The style to be applied when events includes [WidgetEvent.loading].
  final WxToggleSheetStyle? loadingStyle;

  /// The style to be applied when events includes [WidgetEvent.disabled].
  final WxToggleSheetStyle? disabledStyle;

  /// {@macro widgetarian.button.eventsController}
  final WxSheetEventController? eventsController;

  /// Additional style to be merge with [style]
  final WxToggleSheetStyle? extraStyle;

  /// The [style] merged with [additionalStyle]
  @override
  WxToggleSheetStyle get effectiveStyle => WxDrivenToggleSheetStyle.from(
        WxToggleSheetStyle.fromAncestor(super.effectiveStyle),
        selectedStyle: selectedStyle,
        focusedStyle: focusedStyle,
        hoveredStyle: hoveredStyle,
        pressedStyle: pressedStyle,
        disabledStyle: disabledStyle,
      ).merge(extraStyle);

  @override
  Widget build(BuildContext context) {
    return WxToggleSheetRender(
      curve: curve,
      duration: duration,
      theme: WxToggleSheetTheme.of(context),
      style: effectiveStyle,
      variant: variant,
      severity: severity,
      selected: selected,
      loading: loading,
      disabled: disabled,
      autofocus: autofocus,
      focusNode: focusNode,
      onSelected: onSelected,
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
    properties.add(DiagnosticsProperty('selected', selected));
    properties.add(DiagnosticsProperty('loading', loading));
    properties.add(DiagnosticsProperty('autofocus', autofocus));
    properties.add(DiagnosticsProperty('effectiveStyle', effectiveStyle));
  }
}
