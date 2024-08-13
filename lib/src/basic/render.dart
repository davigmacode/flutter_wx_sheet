import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_event.dart';
import 'package:wx_sheet/wx_tile.dart';
import 'package:wx_sheet/wx_anchor.dart';
import 'package:wx_sheet/wx_box.dart';
import 'package:wx_sheet/wx_utils.dart';
import 'package:wx_sheet/animated_icon_theme.dart';
import 'package:wx_sheet/animated_transform.dart';
import 'package:wx_sheet/animated_checkmark.dart';
import 'event.dart';
import 'style.dart';
import 'style_driven.dart';
import 'types.dart';
import 'theme_parent.dart';
import 'theme.dart';

/// A callback function used to wrap a `Widget` within a `WxSheet`.
///
/// The callback receives the current `WxSheetRenderState` and an optional
/// child `Widget` to be rendered within the sheet. It returns a nullable
/// `Widget` representing the wrapped content.
typedef WxSheetWrapper = Widget? Function(
  WxSheetRenderState state,
  Widget? child,
);

/// A widget that represents a sheet-like UI element.
///
/// A sheet is a transient container that is displayed on top of the current content.
/// It can be used to present information, collect user input, or perform actions.
///
/// This widget is customizable through various properties:
///
/// * **Style**: Control the sheet's appearance using a `WxSheetStyle` or a function
///   to resolve styles dynamically (`styleResolver`).
/// * **State**: Indicate the sheet's state (selected, indeterminate, loading, etc.)
///   through properties like `selected`, `indeterminate`, and `loading`.
/// * **Content**: Define the sheet's content using `child`, `title`, `subtitle`,
///   `leading`, and `trailing` properties.
/// * **Interactions**: Handle user interactions with `onPressed` and `onSelected`
///   callbacks.
/// * **Behavior**: Control sheet behavior with properties like `animated`, `curve`,
///   `duration`, `overlay`, `feedback`, etc.
class WxSheetRender extends StatefulWidget {
  /// Creates a new `WxSheetRender` widget.
  ///
  /// Must specify at least one of `title`, `subtitle`, or `child` for content.
  /// Leading and trailing widgets cannot be used without content.
  const WxSheetRender({
    super.key,
    required this.animated,
    required this.curve,
    required this.duration,
    required this.styleResolver,
    required this.style,
    required this.tooltip,
    required this.selected,
    required this.indeterminate,
    required this.disabled,
    required this.loading,
    required this.mouseCursor,
    required this.autofocus,
    required this.focusNode,
    required this.focusable,
    required this.feedback,
    required this.overlay,
    required this.onPressed,
    required this.onSelected,
    required this.eventsController,
    required this.anchorBuilder,
    required this.innerWrapper,
    required this.outerWrapper,
    required this.styleModifier,
    required this.leading,
    required this.trailing,
    required this.title,
    required this.subtitle,
    required this.child,
  })  : assert((title == null && subtitle == null) ||
            child == null ||
            title != null),
        assert((leading == null && trailing == null) ||
            child != null ||
            title != null);

  /// A function used to wrap the sheet anchor (advanced usage).
  final WxSheetWrapper? anchorBuilder;

  /// A function used to wrap the sheet content (advanced usage).
  final WxSheetWrapper? innerWrapper;

  /// A function used to wrap the entire sheet (advanced usage).
  final WxSheetWrapper? outerWrapper;

  /// A function that modifies the `WxSheetStyle` before applying it to the sheet.
  ///
  /// This function can be used to customize the sheet's appearance based on specific
  /// conditions or requirements. It receives the original `WxSheetStyle` as input
  /// and returns a potentially modified `WxSheetStyle`.
  final ValueForwarder<WxSheetStyle>? styleModifier;

  /// {@template widgetarian.sheet.animated}
  /// Whether to animate the sheet decoration.
  /// {@endtemplate}
  final bool animated;

  /// {@template widgetarian.sheet.curve}
  /// The curve to apply when animating the parameters of this widget.
  /// {@endtemplate}
  final Curve curve;

  /// {@template widgetarian.sheet.duration}
  /// The duration over which to animate the parameters of this widget.
  /// {@endtemplate}
  final Duration duration;

  /// {@template widgetarian.sheet.mouseCursor}
  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  /// {@endtemplate}
  final MouseCursor? mouseCursor;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.canRequestFocus}
  final bool focusable;

  /// {@template widgetarian.sheet.selected}
  /// Whether or not this sheet is selected.
  ///
  /// Must not be null. Defaults to false.
  /// {@endtemplate}
  final bool selected;

  /// {@template widgetarian.sheet.indeterminate}
  /// Whether or not this sheet is indeterminate.
  ///
  /// Must not be null. Defaults to false.
  /// {@endtemplate}
  final bool indeterminate;

  /// {@template widgetarian.sheet.loading}
  /// Whether or not this sheet is in loading state.
  ///
  /// Must not be null. Defaults to false.
  /// {@endtemplate}
  final bool loading;

  /// {@template widgetarian.sheet.disabled}
  /// Whether or not this sheet is disabled for input.
  ///
  /// Defaults to false. Cannot be null.
  /// {@endtemplate}
  final bool disabled;

  /// {@template widgetarian.sheet.overlay}
  /// Whether the overlay is enabled or not
  /// {@endtemplate}
  final bool overlay;

  /// {@template widgetarian.sheet.feedback}
  /// Whether detected gestures should disable acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a
  /// long-press will produce a short vibration, when feedback is enabled.
  ///
  /// See also:
  ///
  ///  * [Feedback] for providing platform-specific feedback to certain actions.
  /// {@endtemplate}
  final bool feedback;

  /// {@template widgetarian.sheet.onPressed}
  /// Called when the user taps the sheet.
  ///
  /// If [onPressed] is set, then this callback will be called when the user
  /// taps on the sheet area. If [onPressed] is null, then the sheet will be disabled.
  /// {@endtemplate}
  final VoidCallback? onPressed;

  /// {@template widgetarian.sheet.onSelected}
  /// Called when the sheet should change between selected and de-selected states.
  ///
  /// When the sheet is tapped, then the [onSelected] callback, if set, will be
  /// applied to `!selected` (see [selected]).
  ///
  /// The sheet passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the sheet with the new
  /// value.
  ///
  /// The callback provided to [onSelected] should update the state of the
  /// parent [StatefulWidget] using the [State.setState] method, so that the
  /// parent gets rebuilt.
  ///
  /// The [onSelected] and [onPressed] callbacks must not
  /// both be specified at the same time.
  /// {@endtemplate}
  final ValueChanged<bool>? onSelected;

  /// {@template widgetarian.sheet.eventsController}
  /// Used by widgets that expose their internal event
  /// for the sake of extensions that add support for additional events.
  /// {@endtemplate}
  final WxSheetEventController? eventsController;

  /// {@template widgetarian.button.style}
  /// The style to be applied to the sheet.
  ///
  /// If [style] is an event driven [WxDrivenSheetStyle],
  /// then [WxDrivenSheetStyle.evaluate] is used for the following [WxSheetEvent]s:
  ///
  ///  * [WxSheetEvent.selected].
  ///  * [WxSheetEvent.indeterminate].
  ///  * [WxSheetEvent.focused].
  ///  * [WxSheetEvent.hovered].
  ///  * [WxSheetEvent.pressed].
  ///  * [WxSheetEvent.loading].
  ///  * [WxSheetEvent.disabled].
  /// {@endtemplate}
  final WxSheetStyle style;

  /// {@template widgetarian.sheet.styleResolver}
  /// Defines a function used to resolve
  /// the sheet style based on the variant and severity.
  /// {@endtemplate}
  final WxSheetStyleResolver styleResolver;

  /// {@template widgetarian.sheet.tooltip}
  /// Tooltip string to be used for the body area of the sheet.
  /// {@endtemplate}
  final String? tooltip;

  /// {@template widgetarian.sheet.leading}
  /// A custom widget to display prior to the sheet's [child].
  /// {@endtemplate}
  final Widget? leading;

  /// {@template widgetarian.sheet.trailing}
  /// A custom widget to display next to the sheet's [child].
  /// {@endtemplate}
  final Widget? trailing;

  /// {@template widgetarian.sheet.title}
  /// The primary text content
  /// {@endtemplate}
  final Widget? title;

  /// {@template widgetarian.sheet.subtitle}
  /// Additional content displayed below the title.
  /// {@endtemplate}
  final Widget? subtitle;

  /// {@template widgetarian.sheet.child}
  /// The widget below this widget in the tree.
  /// {@endtemplate}
  final Widget? child;

  bool get enabled => !disabled && !loading;

  bool get hasCallback => onPressed != null || onSelected != null;

  bool get canTap => hasCallback;

  bool get hasSecondary => leading != null || trailing != null;

  @override
  State<WxSheetRender> createState() => WxSheetRenderState();
}

/// The state class for the `WxSheetRender` widget.
///
/// This class manages the state and events of a `WxSheetRender` widget.
/// It handles applying styles based on events (selected, hovered, etc.),
/// building the child widget with appropriate wrappers, and handling user interactions
/// like taps and hovers.
class WxSheetRenderState extends State<WxSheetRender>
    with WidgetEventMixin<WxSheetRender> {
  /// Whether the sheet should animate its changes.
  bool get animated => widget.animated;

  /// The animation curve used for animations.
  Curve get curve => widget.curve;

  /// The animation duration used for animations.
  Duration get duration => widget.duration;

  /// The child widget to be displayed inside the sheet.
  Widget? get child => widget.child;

  /// The leading widget to be displayed on the start side of the sheet.
  Widget? get leading => widget.leading;

  /// The trailing widget to be displayed on the end side of the sheet.
  Widget? get trailing => widget.trailing;

  /// The type of pointer device that last interacted with the sheet.
  ///
  /// This is used internally to handle haptic feedback for taps.
  PointerDeviceKind? pointerDeviceKind;

  /// The style applied to the sheet.
  WxSheetStyle style = const WxSheetStyle();

  /// Evaluate and sets the style of the sheet based on the current events.
  ///
  /// This method is called whenever the widget events change. It evaluates
  /// the `style` property (which can be static or event-driven), and sets
  /// the `style` state variable accordingly.
  @protected
  void setStyle() {
    style = evaluateStyle(widget.style, widget.styleResolver);
  }

  WxSheetStyle evaluateStyle(
    WxSheetStyle rawStyle,
    WxSheetStyleResolver resolver,
  ) {
    final specs = evaluateDrivenStyle(rawStyle);
    final fallback = resolver(WxSheetStyleResolverData(
      variant: specs.variant,
      size: specs.size,
      severity: specs.severity,
      hasLeading: leading != null,
      hasTrailing: trailing != null,
      hasCallback: widget.hasCallback,
    ));
    final resolved = fallback.merge(rawStyle);
    final evaluated = evaluateDrivenStyle(resolved);
    return prepareStyle(evaluated);
  }

  /// Evaluates a `WxSheetStyle` based on the current widget events.
  ///
  /// This method takes a `WxSheetStyle` and applies any event-driven
  /// overrides based on the current state of the widget (selected, hovered, etc.).
  /// The result is a new `WxSheetStyle` object with the applied overrides.
  WxSheetStyle evaluateDrivenStyle(WxSheetStyle actualStyle) {
    return WxDrivenSheetStyle.evaluate(actualStyle, widgetEvents.value);
  }

  /// Prepares a `WxSheetStyle` by resolving properties and applying defaults.
  ///
  /// This method takes a `WxSheetStyle` and calculates final values for
  /// background color, border color, foreground color, text style, icon color,
  /// overlay color, and other style properties based on the provided values
  /// and potential theme overrides.
  @protected
  WxSheetStyle prepareStyle(WxSheetStyle actualStyle) {
    final backgroundColor = getBackgroundColor(actualStyle);

    final borderColor = WxColors.withTransparency(
      actualStyle.borderColor,
      opacity: actualStyle.borderOpacity,
      alpha: actualStyle.borderAlpha,
    );

    final defaultForegroundColor = actualStyle.adaptiveForegroundColor == true
        ? widget.selected && widget.disabled
            ? backgroundColor
            : WxColors.onSurface(backgroundColor)
        : null;

    final foregroundColor = WxColors.withTransparency(
      actualStyle.foregroundColor ?? defaultForegroundColor,
      opacity: actualStyle.foregroundOpacity,
      alpha: actualStyle.foregroundAlpha,
    );

    final foregroundStyle = const TextStyle()
        .merge(actualStyle.textStyle)
        .copyWith(color: foregroundColor);

    final iconColor = actualStyle.iconColor ?? foregroundColor;

    final overlayColor =
        actualStyle.overlayColor ?? WxColors.onSurface(backgroundColor);

    actualStyle = actualStyle.copyWith(
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      foregroundColor: foregroundColor,
      titleColor: actualStyle.titleColor ?? foregroundColor,
      subtitleColor: actualStyle.subtitleColor ?? foregroundColor,
      textStyle: foregroundStyle,
      iconColor: iconColor,
      overlayColor: overlayColor,
      overlayShape: actualStyle.overlayShape ?? actualStyle.shape,
      spinnerColor: actualStyle.spinnerColor ?? iconColor,
      spinnerSize: actualStyle.spinnerSize ?? actualStyle.iconSize,
      checkmarkColor: actualStyle.checkmarkColor ?? iconColor,
      checkmarkSize: actualStyle.checkmarkSize ?? actualStyle.iconSize,
    );

    return widget.styleModifier?.call(actualStyle) ?? actualStyle;
  }

  /// Calculates the background color based on the provided style and potential theme overrides.
  ///
  /// This method applies elevation overlay if necessary and returns the final background color.
  @protected
  Color? getBackgroundColor(WxSheetStyle? actualStyle) {
    final color = WxColors.withTransparency(
      actualStyle?.backgroundColor,
      opacity: actualStyle?.backgroundOpacity,
      alpha: actualStyle?.backgroundAlpha,
    );

    final surfaceTint = actualStyle?.surfaceTint;
    final elevation = actualStyle?.elevation;
    if (color != null && surfaceTint != null && elevation != null) {
      return ElevationOverlay.applySurfaceTint(color, surfaceTint, elevation);
    }
    return color;
  }

  /// Builds a tile widget based on the provided content and style.
  ///
  /// This method creates a `WxTile` widget with appropriate content and styling based on the provided child widget,
  /// title, subtitle, and style properties.
  @protected
  Widget? tileBuilder(Widget? child) {
    if (widget.title != null) {
      child = WxTextTile(
        title: widget.title!,
        subtitle: widget.subtitle,
        align: style.textAlign,
        spacing: style.textSpacing,
        color: style.textColor,
        overflow: style.textOverflow,
        softWrap: style.textSoftWrap,
        widthBasis: style.textWidthBasis,
        titleStyle: style.titleStyle,
        subtitleStyle: style.subtitleStyle,
        titleSize: style.titleSize,
        subtitleSize: style.subtitleSize,
        titleColor: style.titleColor,
        subtitleColor: style.subtitleColor,
        titleMaxLines: style.titleMaxLines,
        subtitleMaxLines: style.subtitleMaxLines,
        titleWeight: style.titleWeight,
        subtitleWeight: style.subtitleWeight,
      );
    }

    if (child != null) {
      child = WxTile(
        inline: style.width != double.infinity,
        direction: style.direction,
        spacing: style.spacing,
        adaptiveSpacing: style.adaptiveSpacing,
        align: style.tileAlign,
        justify: style.tileJustify,
        childWrap: style.tileWrap,
        leading: DrivenProperty.evaluate<Widget?>(
          widget.leading,
          widgetEvents.value,
        ),
        trailing: DrivenProperty.evaluate<Widget?>(
          widget.trailing,
          widgetEvents.value,
        ),
        child: DrivenProperty.evaluate<Widget>(
          child,
          widgetEvents.value,
        ),
      );
    }

    return child;
  }

  /// Applies inner wrappers to the child widget.
  ///
  /// This method applies alignment and padding to the child widget as specified by the style.
  @protected
  Widget? innerWrapper(Widget? child) {
    // resolve custom wrapper
    child = widget.innerWrapper?.call(this, child) ?? child;

    final alignment = style.alignment;
    if (alignment != null && child != null) {
      child = Align(alignment: alignment, child: child);
    }

    if (style.padding != null) {
      child = AnimatedPadding(
        curve: curve,
        duration: duration,
        padding: style.padding!,
        child: child,
      );
    }

    return child;
  }

  /// Applies outer wrappers to the child widget.
  ///
  /// This method applies opacity, transform, tooltip, icon theme, text style,
  /// and other outer wrappers to the child widget based on the provided style.
  @protected
  Widget? outerWrapper(Widget? child) {
    child = AnimatedOpacity(
      opacity: style.opacity ?? 1,
      curve: curve,
      duration: duration,
      child: child,
    );

    child = AnimatedTransform(
      offset: style.offset ?? Offset.zero,
      scale: style.scale ?? 1,
      rotate: style.rotate ?? 0,
      flipX: style.flipX ?? false,
      flipY: style.flipY ?? false,
      curve: curve,
      duration: duration,
      child: child,
    );

    if (widget.tooltip != null) {
      child = Tooltip(
        message: widget.tooltip,
        child: child,
      );
    }

    child = animated
        ? AnimatedIconTheme(
            curve: curve,
            duration: duration,
            data: IconThemeData(
              color: style.iconColor,
              size: style.iconSize,
              opacity: style.iconOpacity,
            ),
            child: child,
          )
        : IconTheme.merge(
            data: IconThemeData(
              color: style.iconColor,
              size: style.iconSize,
              opacity: style.iconOpacity,
            ),
            child: child,
          );

    child = animated
        ? AnimatedDefaultTextStyle(
            curve: curve,
            duration: duration,
            style: style.textStyle!,
            textAlign: style.textAlign,
            child: child,
          )
        : DefaultTextStyle.merge(
            style: style.textStyle,
            textAlign: style.textAlign,
            child: child,
          );

    child = WxListTileTheme.merge(
      style: WxListTileStyle(
        spacing: style.textSpacing,
        textAlign: style.textAlign,
        textColor: style.textColor,
        textOverflow: style.textOverflow,
        textSoftWrap: style.textSoftWrap,
        textWidthBasis: style.textWidthBasis,
        titleStyle: style.titleStyle,
        titleSize: style.titleSize,
        titleColor: style.titleColor,
        titleMaxLines: style.titleMaxLines,
        titleWeight: style.titleWeight,
        subtitleSize: style.subtitleSize,
        subtitleStyle: style.subtitleStyle,
        subtitleColor: style.subtitleColor,
        subtitleMaxLines: style.subtitleMaxLines,
        subtitleWeight: style.subtitleWeight,
      ),
      child: child,
    );

    child = DrivenSpinnerTheme.merge(
      color: style.spinnerColor,
      backgroundColor: style.spinnerBackgroundColor,
      size: style.spinnerSize,
      width: style.spinnerWidth,
      rounded: style.spinnerRounded,
      child: child,
    );

    child = CheckmarkTheme.merge(
      color: style.checkmarkColor,
      size: style.checkmarkSize,
      weight: style.checkmarkWeight,
      child: child,
    );

    child = WxSheetTheme(
      data: WxSheetThemeParent(
        style: WxSheetStyle(
          variant: style.variant,
          severity: style.severity,
          size: style.size,
        ),
      ),
      child: child,
    );

    // resolve custom wrapper
    child = widget.outerWrapper?.call(this, child) ?? child;

    return child;
  }

  /// Builds the container for the sheet content.
  ///
  /// This method creates a `WxAnimatedBox` or `WxBox` widget based on the animation flag
  /// and applies the provided style properties to the container.
  @protected
  Widget? containerBuilder(Widget? child) {
    if (animated) {
      return WxAnimatedBox(
        curve: curve,
        duration: duration,
        color: style.backgroundColor,
        elevationColor: style.elevationColor,
        borderColor: style.borderColor,
        borderRadius: style.borderRadius,
        borderWidth: style.borderWidth,
        borderStyle: style.borderStyle,
        borderOffset: style.borderOffset,
        border: style.border,
        image: style.image,
        shadows: style.shadows,
        gradient: style.gradient,
        elevation: style.elevation,
        clipBehavior: style.clipBehavior,
        margin: style.margin,
        constraints: style.constraints,
        height: style.height,
        width: style.width,
        child: child,
      );
    }
    return WxBox(
      color: style.backgroundColor,
      elevationColor: style.elevationColor,
      borderColor: style.borderColor,
      borderRadius: style.borderRadius,
      borderWidth: style.borderWidth,
      borderStyle: style.borderStyle,
      borderOffset: style.borderOffset,
      border: style.border,
      image: style.image,
      shadows: style.shadows,
      gradient: style.gradient,
      elevation: style.elevation,
      clipBehavior: style.clipBehavior,
      margin: style.margin,
      constraints: style.constraints,
      height: style.height,
      width: style.width,
      child: child,
    );
  }

  /// Builds the anchor for the sheet.
  ///
  /// This method creates a `WxAnchor` widget if the sheet is clickable,
  /// otherwise returns the child directly.
  @protected
  Widget? anchorBuilder(Widget? child) {
    if (widget.canTap) {
      final anchorBuilder = widget.anchorBuilder;
      if (anchorBuilder != null) {
        return anchorBuilder(this, child);
      }
      return WxAnchor.raw(
        curve: curve,
        duration: duration,
        disabled: !widget.canTap || !widget.enabled,
        autofocus: widget.autofocus,
        focusNode: widget.focusNode,
        focusable: widget.focusable,
        feedback: widget.feedback,
        overlay: widget.overlay,
        overlayColor: style.overlayColor,
        overlayOpacity: style.overlayOpacity,
        overlayShape: style.overlayShape,
        overlayExtent: style.overlayExtent,
        textStyle: style.textStyle,
        textAlign: style.textAlign,
        mouseCursor: widget.mouseCursor,
        onTap: onTap,
        onTapCancel: onTapCancel,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onHover: onHover,
        onFocus: onFocus,
        child: child,
      );
    }
    return child;
  }

  /// Handles the tap event for the sheet.
  ///
  /// This method is called when the sheet is tapped. It invokes the `onPressed`
  /// and `onSelected` callbacks if defined.
  void onTap() {
    widget.onPressed?.call();
    widget.onSelected?.call(!widget.selected);
  }

  /// Handles the tap cancel event for the sheet.
  ///
  /// This method is called when a tap is canceled. It resets the pointer device kind
  /// and clears the pressed state.
  void onTapCancel() async {
    if (pointerDeviceKind == PointerDeviceKind.touch) {
      await Future.delayed(duration);
    }
    pointerDeviceKind = null;
    widgetEvents.toggle(WxSheetEvent.pressed, false);
  }

  /// Handles the tap up event for the sheet.
  ///
  /// This method is called when a tap is released. It resets the pointer device kind
  /// and clears the pressed state after a delay.
  void onTapUp(TapUpDetails details) async {
    if (details.kind == PointerDeviceKind.touch) {
      await Future.delayed(duration);
    }
    pointerDeviceKind = null;
    widgetEvents.toggle(WxSheetEvent.pressed, false);
  }

  /// Handles the tap down event for the sheet.
  ///
  /// This method is called when a tap is initiated. It sets the pointer device kind
  /// and sets the pressed state.
  void onTapDown(TapDownDetails details) {
    pointerDeviceKind = details.kind;
    widgetEvents.toggle(WxSheetEvent.pressed, true);
  }

  /// Handles the hover event for the sheet.
  ///
  /// This method is called when the mouse hovers over the sheet. It updates the
  /// hovered state accordingly.
  void onHover(bool value) {
    widgetEvents.toggle(WxSheetEvent.hovered, value);
  }

  /// Handles the focus event for the sheet.
  ///
  /// This method is called when the sheet gains or loses focus. It updates the
  /// focused state accordingly.
  void onFocus(bool value) {
    widgetEvents.toggle(WxSheetEvent.focused, value);
  }

  /// Populates the widget events with the current sheet state.
  ///
  /// This method updates the widget events with the current values of `selected`,
  /// `indeterminate`, `loading`, and `disabled`.
  @protected
  void populateWidgetEvents() {
    widgetEvents.update({
      WxSheetEvent.indeterminate: widget.indeterminate,
      WxSheetEvent.selected: widget.selected,
      WxSheetEvent.loading: widget.loading,
      WxSheetEvent.disabled: widget.disabled,
    }, forceNotify: true);
  }

  @override
  void initState() {
    super.initState();
    initWidgetEvents(widget.eventsController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    populateWidgetEvents();
  }

  @override
  void didUpdateWidget(WxSheetRender oldWidget) {
    if (mounted) {
      super.didUpdateWidget(oldWidget);
      updateWidgetEvents(widget.eventsController);
      populateWidgetEvents();
    }
  }

  /// Handles changes in widget events.
  ///
  /// This method is called when the widget events change. It updates the sheet style.
  @override
  void didChangeWidgetEvents() {
    setStyle();
    super.didChangeWidgetEvents();
  }

  @override
  Widget build(BuildContext context) {
    Widget? result = child;
    result = tileBuilder(result);
    result = innerWrapper(result);
    result = containerBuilder(result);
    result = anchorBuilder(result);
    result = outerWrapper(result);

    return Semantics(
      excludeSemantics: true,
      container: !widget.hasCallback,
      button: widget.hasCallback,
      enabled: widget.enabled,
      selected: widget.selected,
      tooltip: widget.tooltip,
      focused: widgetEvents.isFocused,
      child: result,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    style.debugFillProperties(properties);
  }
}
