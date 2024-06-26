import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widget_event/widget_event.dart';
import 'package:animated_icon_theme/animated_icon_theme.dart';
import 'package:wx_utils/wx_utils.dart';
import 'package:wx_box/wx_box.dart';
import 'package:wx_tile/wx_tile.dart';
import 'package:wx_anchor/wx_anchor.dart';
import 'event.dart';
import 'style.dart';
import 'style_driven.dart';
import 'types.dart';
import 'theme_data.dart';

class WxSheetRender<T extends WxSheetThemeData<T>> extends StatefulWidget {
  const WxSheetRender({
    super.key,
    required this.theme,
    this.style,
    this.curve,
    this.duration,
    this.animated,
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.eventsController,
    this.leading,
    this.trailing,
    this.child,
  }) : assert((leading == null && trailing == null) || child != null);

  final bool? animated;

  final WxSheetBuilder<T>? wrapper;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@template widgetarian.button.selected}
  /// Whether or not this button is selected.
  ///
  /// Must not be null. Defaults to false.
  /// {@endtemplate}
  final bool selected;

  /// {@template widgetarian.button.loading}
  /// Whether or not this button is in loading state.
  ///
  /// Must not be null. Defaults to false.
  /// {@endtemplate}
  final bool loading;

  /// {@template widgetarian.button.disabled}
  /// Whether or not this button is disabled for input.
  ///
  /// Defaults to false. Cannot be null.
  /// {@endtemplate}
  final bool disabled;

  /// {@template widgetarian.button.onPressed}
  /// Called when the user taps the button.
  ///
  /// If [onPressed] is set, then this callback will be called when the user
  /// taps on the button area. If [onPressed] is null, then the button will be disabled.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// class Blacksmith extends StatelessWidget {
  ///   const Blacksmith({Key? key}) : super(key: key);
  ///
  ///   void startHammering() {
  ///     print('bang bang bang');
  ///   }
  ///
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     return Button(
  ///       child: const Text('Apply Hammer'),
  ///       onPressed: startHammering,
  ///     );
  ///   }
  /// }
  /// ```
  /// {@end-tool}
  /// {@endtemplate}
  final VoidCallback? onPressed;

  /// {@template widgetarian.button.onSelected}
  /// Called when the button should change between selected and de-selected states.
  ///
  /// When the button is tapped, then the [onSelected] callback, if set, will be
  /// applied to `!selected` (see [selected]).
  ///
  /// The button passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the button with the new
  /// value.
  ///
  /// The callback provided to [onSelected] should update the state of the
  /// parent [StatefulWidget] using the [State.setState] method, so that the
  /// parent gets rebuilt.
  ///
  /// The [onSelected] and [onPressed] callbacks must not
  /// both be specified at the same time.
  ///
  /// {@tool snippet}
  ///
  /// A [StatefulWidget] that illustrates use of onSelected in an [InputChip].
  ///
  /// ```dart
  /// class Wood extends StatefulWidget {
  ///   const Wood({Key? key}) : super(key: key);
  ///
  ///   @override
  ///   State<StatefulWidget> createState() => WoodState();
  /// }
  ///
  /// class WoodState extends State<Wood> {
  ///   bool _useChisel = false;
  ///
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     return Button.toggle(
  ///       child: const Text('Use Chisel'),
  ///       selected: _useChisel,
  ///       onSelected: (bool newValue) {
  ///         setState(() {
  ///           _useChisel = newValue;
  ///         });
  ///       },
  ///     );
  ///   }
  /// }
  /// ```
  /// {@end-tool}
  /// {@endtemplate}
  final ValueChanged<bool>? onSelected;

  /// {@template widgetarian.button.eventsController}
  /// Used by widgets that expose their internal event
  /// for the sake of extensions that add support for additional events.
  /// {@endtemplate}
  final WxSheetEventController? eventsController;

  /// {@template widgetarian.button.curve}
  /// The curve to apply when animating the parameters of this widget.
  /// {@endtemplate}
  final Curve? curve;

  /// {@template widgetarian.button.duration}
  /// The duration over which to animate the parameters of this widget.
  /// {@endtemplate}
  final Duration? duration;

  /// {@template widgetarian.button.style}
  /// The style to be applied to the button.
  ///
  /// If [style] is an event driven [WxDrivenSheetStyle],
  /// then [WxDrivenSheetStyle.evaluate] is used for the following [WxSheetEvent]s:
  ///
  ///  * [WxSheetEvent.selected].
  ///  * [WxSheetEvent.focused].
  ///  * [WxSheetEvent.hovered].
  ///  * [WxSheetEvent.pressed].
  ///  * [WxSheetEvent.disabled].
  /// {@endtemplate}
  final WxSheetStyle? style;

  /// {@template widgetarian.button.theme}
  /// The [WxToggleSheetThemeData] that provides fallback values.
  /// {@endtemplate}
  final WxSheetThemeData<T> theme;

  /// {@template widgetarian.button.tooltip}
  /// Tooltip string to be used for the body area of the button.
  /// {@endtemplate}
  final String? tooltip;

  /// {@template widgetarian.button.leading}
  /// A custom widget to display prior to the button's [child].
  /// {@endtemplate}
  final Widget? leading;

  /// {@template widgetarian.button.trailing}
  /// A custom widget to display next to the button's [child].
  /// {@endtemplate}
  final Widget? trailing;

  /// {@template widgetarian.button.child}
  /// The widget below this widget in the tree.
  /// {@endtemplate}
  final Widget? child;

  bool get enabled => !disabled && !loading;

  bool get hasCallback => onPressed != null || onSelected != null;

  bool get canTap => enabled && hasCallback;

  bool get hasSecondary => leading != null || trailing != null;

  WxSheetBuilder<T> get effectiveWrapper =>
      wrapper ?? theme.wrapper ?? (context, theme, child) => child;

  @override
  State<WxSheetRender> createState() => WxSheetRenderState();
}

class WxSheetRenderState extends State<WxSheetRender>
    with WidgetEventMixin<WxSheetRender> {
  bool get animated => widget.animated ?? widget.theme.animated;
  Curve get curve => widget.curve ?? widget.theme.curve;
  Duration get duration => widget.duration ?? widget.theme.duration;

  PointerDeviceKind? pointerDeviceKind;

  WxSheetStyle effectiveStyle = const WxSheetStyle();

  @protected
  void setEffectiveStyle() {
    final raw = widget.style;
    final specs = evaluateDrivenStyle(raw);
    final fallback = widget.theme.resolve(
      variant: specs?.variant,
      severity: specs?.severity,
    );
    final style = fallback.merge(raw);
    final evaluated = evaluateDrivenStyle(style);
    effectiveStyle = calcEffectiveStyle(evaluated)!;
  }

  WxSheetStyle? evaluateDrivenStyle(WxSheetStyle? style) {
    return WxDrivenSheetStyle.evaluate(style, widgetEvents.value);
  }

  WxSheetStyle? calcEffectiveStyle(WxSheetStyle? style) {
    final backgroundColor = getBackgroundColor(style);

    final borderColor = WxColors.withTransparency(
      style?.borderColor,
      opacity: style?.borderOpacity,
      alpha: style?.borderAlpha,
    );

    final defaultForegroundColor =
        style?.isFilled == true || style?.isElevated == true
            ? widget.selected && widget.disabled
                ? backgroundColor
                : WxColors.onSurface(backgroundColor)
            : null;

    final foregroundColor = WxColors.withTransparency(
      style?.foregroundColor ?? defaultForegroundColor,
      opacity: style?.foregroundOpacity,
      alpha: style?.foregroundAlpha,
    );

    final foregroundStyle = const TextStyle()
        .merge(style?.textStyle)
        .copyWith(color: foregroundColor);

    final iconColor = style?.iconColor ?? foregroundColor;

    final overlayColor =
        style?.overlayColor ?? WxColors.onSurface(backgroundColor);

    return style?.copyWith(
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      foregroundColor: foregroundColor,
      textStyle: foregroundStyle,
      iconColor: iconColor,
      overlayColor: overlayColor,
    );
  }

  Color? getBackgroundColor(WxSheetStyle? style) {
    final color = WxColors.withTransparency(
      style?.backgroundColor,
      opacity: style?.backgroundOpacity,
      alpha: style?.backgroundAlpha,
    );

    final elevation = style?.elevation;

    if (color == null || elevation == null) return color;

    if (style?.surfaceTint != null) {
      return ElevationOverlay.applySurfaceTint(
        color,
        style?.surfaceTint,
        elevation,
      );
    }
    return ElevationOverlay.applyOverlay(context, color, elevation);
  }

  void onTap() {
    widget.onPressed?.call();
    widget.onSelected?.call(!widget.selected);
  }

  void onTapCancel() async {
    if (pointerDeviceKind == PointerDeviceKind.touch) {
      await Future.delayed(duration);
    }
    pointerDeviceKind = null;
    widgetEvents.toggle(WxSheetEvent.pressed, false);
  }

  void onTapUp(TapUpDetails details) async {
    if (details.kind == PointerDeviceKind.touch) {
      await Future.delayed(duration);
    }
    pointerDeviceKind = null;
    widgetEvents.toggle(WxSheetEvent.pressed, false);
  }

  void onTapDown(TapDownDetails details) {
    pointerDeviceKind = details.kind;
    widgetEvents.toggle(WxSheetEvent.pressed, true);
  }

  void onHover(bool value) {
    widgetEvents.toggle(WxSheetEvent.hovered, value);
  }

  void onFocus(bool value) {
    widgetEvents.toggle(WxSheetEvent.focused, value);
  }

  @override
  void initState() {
    initWidgetEvents(widget.eventsController);
    widgetEvents.toggle(WxSheetEvent.selected, widget.selected);
    widgetEvents.toggle(WxSheetEvent.loading, widget.loading);
    widgetEvents.toggle(WxSheetEvent.disabled, widget.disabled);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    setEffectiveStyle();
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(WxSheetRender oldWidget) {
    if (mounted) {
      updateWidgetEvents(oldWidget.eventsController, widget.eventsController);
      widgetEvents.toggle(WxSheetEvent.selected, widget.selected);
      widgetEvents.toggle(WxSheetEvent.loading, widget.loading);
      widgetEvents.toggle(WxSheetEvent.disabled, widget.disabled);
      setEffectiveStyle();
      super.didUpdateWidget(oldWidget);
    }
  }

  @override
  void didChangeWidgetEvents() {
    setEffectiveStyle();
    super.didChangeWidgetEvents();
  }

  @override
  Widget build(BuildContext context) {
    // Widget? result = widget.effectiveWrapper.call(
    //   context,
    //   widget.theme.copyWith(
    //     animated: animated,
    //     duration: duration,
    //     curve: curve,
    //     style: effectiveStyle,
    //   ),
    //   widget.child,
    // );

    Widget? result = widget.child;

    if (result != null) {
      result = WxTile(
        inline: true,
        direction: effectiveStyle.direction,
        spacing: effectiveStyle.spacing,
        adaptiveSpacing: effectiveStyle.adaptiveSpacing,
        align: effectiveStyle.align,
        justify: effectiveStyle.justify,
        childWrap: effectiveStyle.textWrap,
        leading: widget.leading,
        trailing: widget.trailing,
        child: result,
      );
    }

    final alignment = effectiveStyle.alignment;
    if (alignment != null && result != null) {
      result = Align(alignment: alignment, child: result);
    }

    if (effectiveStyle.padding != null) {
      result = AnimatedPadding(
        curve: curve,
        duration: duration,
        padding: effectiveStyle.padding!,
        child: result,
      );
    }

    if (widget.canTap) {
      result = WxAnchor(
        curve: curve,
        duration: duration,
        disabled: !widget.canTap,
        autofocus: widget.autofocus,
        focusNode: widget.focusNode,
        overlayColor: effectiveStyle.overlayColor,
        overlayOpacity: effectiveStyle.overlayOpacity,
        overlayDisabled: effectiveStyle.overlayDisabled,
        onTap: onTap,
        onTapCancel: onTapCancel,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onHover: onHover,
        onFocus: onFocus,
        child: result,
      );
    }

    result = animated
        ? WxAnimatedBox(
            curve: curve,
            duration: duration,
            color: effectiveStyle.backgroundColor,
            elevationColor: effectiveStyle.elevationColor,
            borderColor: effectiveStyle.borderColor,
            borderRadius: effectiveStyle.borderRadius,
            borderWidth: effectiveStyle.borderWidth,
            borderStyle: effectiveStyle.borderStyle,
            borderOffset: effectiveStyle.borderOffset,
            border: effectiveStyle.border,
            image: effectiveStyle.image,
            shadows: effectiveStyle.shadows,
            gradient: effectiveStyle.gradient,
            elevation: effectiveStyle.elevation,
            clipBehavior: effectiveStyle.clipBehavior,
            margin: effectiveStyle.margin,
            constraints: effectiveStyle.constraints,
            height: effectiveStyle.height,
            width: effectiveStyle.width,
            child: result,
          )
        : WxBox(
            color: effectiveStyle.backgroundColor,
            elevationColor: effectiveStyle.elevationColor,
            borderColor: effectiveStyle.borderColor,
            borderRadius: effectiveStyle.borderRadius,
            borderWidth: effectiveStyle.borderWidth,
            borderStyle: effectiveStyle.borderStyle,
            borderOffset: effectiveStyle.borderOffset,
            border: effectiveStyle.border,
            image: effectiveStyle.image,
            shadows: effectiveStyle.shadows,
            gradient: effectiveStyle.gradient,
            elevation: effectiveStyle.elevation,
            clipBehavior: effectiveStyle.clipBehavior,
            margin: effectiveStyle.margin,
            constraints: effectiveStyle.constraints,
            height: effectiveStyle.height,
            width: effectiveStyle.width,
            child: result,
          );

    if (widget.tooltip != null) {
      result = Tooltip(
        message: widget.tooltip,
        child: result,
      );
    }

    result = animated
        ? AnimatedIconTheme(
            curve: curve,
            duration: duration,
            data: IconThemeData(
              color: effectiveStyle.iconColor,
              size: effectiveStyle.iconSize,
              opacity: effectiveStyle.iconOpacity,
            ),
            child: result,
          )
        : IconTheme.merge(
            data: IconThemeData(
              color: effectiveStyle.iconColor,
              size: effectiveStyle.iconSize,
              opacity: effectiveStyle.iconOpacity,
            ),
            child: result,
          );

    result = animated
        ? AnimatedDefaultTextStyle(
            curve: curve,
            duration: duration,
            style: effectiveStyle.textStyle!,
            textAlign: effectiveStyle.textAlign,
            child: result,
          )
        : DefaultTextStyle.merge(
            style: effectiveStyle.textStyle,
            textAlign: effectiveStyle.textAlign,
            child: result,
          );

    return Semantics(
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
    effectiveStyle.debugFillProperties(properties);
  }
}
