import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widget_event/widget_event.dart';
import 'package:animated_icon_theme/animated_icon_theme.dart';
import 'package:animated_transform/animated_transform.dart';
import 'package:wx_utils/wx_utils.dart';
import 'package:wx_box/wx_box.dart';
import 'package:wx_tile/wx_tile.dart';
import 'package:wx_anchor/wx_anchor.dart';
import 'event.dart';
import 'style.dart';
import 'style_driven.dart';
import 'types.dart';

class WxSheetRender extends StatefulWidget {
  const WxSheetRender({
    super.key,
    required this.animated,
    required this.curve,
    required this.duration,
    required this.styleResolver,
    this.style,
    this.tooltip,
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
    this.title,
    this.subtitle,
    this.child,
  })  : assert((title == null && subtitle == null) ||
            child == null ||
            title != null),
        assert((leading == null && trailing == null) ||
            child != null ||
            title != null);

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

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@template widgetarian.sheet.selected}
  /// Whether or not this sheet is selected.
  ///
  /// Must not be null. Defaults to false.
  /// {@endtemplate}
  final bool selected;

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
  final WxSheetStyle? style;

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

  bool get canTap => enabled && hasCallback;

  bool get hasSecondary => leading != null || trailing != null;

  @override
  State<WxSheetRender> createState() => WxSheetRenderState();
}

class WxSheetRenderState extends State<WxSheetRender>
    with WidgetEventMixin<WxSheetRender> {
  bool get animated => widget.animated;
  Curve get curve => widget.curve;
  Duration get duration => widget.duration;

  Widget? get child => widget.child;
  Widget? get leading => widget.leading;
  Widget? get trailing => widget.trailing;

  PointerDeviceKind? pointerDeviceKind;

  WxSheetStyle effectiveStyle = const WxSheetStyle();

  @protected
  void setEffectiveStyle() {
    final raw = widget.style;
    final specs = evaluateDrivenStyle(raw);
    final fallback = widget.styleResolver(
      specs?.variant,
      specs?.severity,
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

  Widget? tileBuilder(Widget? child) {
    if (widget.title != null) {
      child = WxTextTile(
        title: widget.title!,
        subtitle: widget.subtitle,
        align: effectiveStyle.textAlign,
        spacing: effectiveStyle.textSpacing,
        color: effectiveStyle.textColor,
        overflow: effectiveStyle.textOverflow,
        softWrap: effectiveStyle.textSoftWrap,
        widthBasis: effectiveStyle.textWidthBasis,
        titleStyle: effectiveStyle.titleStyle,
        subtitleStyle: effectiveStyle.subtitleStyle,
        titleSize: effectiveStyle.titleSize,
        subtitleSize: effectiveStyle.subtitleSize,
        titleColor: effectiveStyle.titleColor,
        subtitleColor: effectiveStyle.subtitleColor,
        titleMaxLines: effectiveStyle.titleMaxLines,
        subtitleMaxLines: effectiveStyle.subtitleMaxLines,
        titleWeight: effectiveStyle.titleWeight,
        subtitleWeight: effectiveStyle.subtitleWeight,
      );
    }

    if (child != null) {
      child = WxTile(
        inline: true,
        direction: effectiveStyle.direction,
        spacing: effectiveStyle.spacing,
        adaptiveSpacing: effectiveStyle.adaptiveSpacing,
        align: effectiveStyle.tileAlign,
        justify: effectiveStyle.tileJustify,
        childWrap: effectiveStyle.tileWrap,
        leading: leading,
        trailing: trailing,
        child: child,
      );
    }

    return child;
  }

  Widget? innerWrapper(Widget? child) {
    final alignment = effectiveStyle.alignment;
    if (alignment != null && child != null) {
      child = Align(alignment: alignment, child: child);
    }

    if (effectiveStyle.padding != null) {
      child = AnimatedPadding(
        curve: curve,
        duration: duration,
        padding: effectiveStyle.padding!,
        child: child,
      );
    }

    return child;
  }

  Widget? outerWrapper(Widget? child) {
    if (child != null) {
      child = AnimatedTransform(
        offset: effectiveStyle.offset ?? Offset.zero,
        scale: effectiveStyle.scale ?? 1,
        rotate: effectiveStyle.rotate ?? 0,
        flipX: effectiveStyle.flipX ?? false,
        flipY: effectiveStyle.flipY ?? false,
        curve: curve,
        duration: duration,
        child: child,
      );
    }

    child = AnimatedOpacity(
      opacity: effectiveStyle.opacity ?? 1,
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
              color: effectiveStyle.iconColor,
              size: effectiveStyle.iconSize,
              opacity: effectiveStyle.iconOpacity,
            ),
            child: child,
          )
        : IconTheme.merge(
            data: IconThemeData(
              color: effectiveStyle.iconColor,
              size: effectiveStyle.iconSize,
              opacity: effectiveStyle.iconOpacity,
            ),
            child: child,
          );

    child = animated
        ? AnimatedDefaultTextStyle(
            curve: curve,
            duration: duration,
            style: effectiveStyle.textStyle!,
            textAlign: effectiveStyle.textAlign,
            child: child,
          )
        : DefaultTextStyle.merge(
            style: effectiveStyle.textStyle,
            textAlign: effectiveStyle.textAlign,
            child: child,
          );

    return child;
  }

  Widget? containerBuilder(Widget? child) {
    if (animated) {
      return WxAnimatedBox(
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
        child: child,
      );
    }
    return WxBox(
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
      child: child,
    );
  }

  Widget? anchorBuilder(Widget? child) {
    if (widget.canTap) {
      return WxAnchor(
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
        child: child,
      );
    }
    return child;
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

  @protected
  void toggleWidgetEvents() {
    widgetEvents.toggle(WxSheetEvent.selected, widget.selected);
    widgetEvents.toggle(WxSheetEvent.loading, widget.loading);
    widgetEvents.toggle(WxSheetEvent.disabled, widget.disabled);
  }

  @override
  void initState() {
    initWidgetEvents(widget.eventsController);
    toggleWidgetEvents();
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
      toggleWidgetEvents();
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
    Widget? result = child;
    result = tileBuilder(result);
    result = innerWrapper(result);
    result = anchorBuilder(result);
    result = containerBuilder(result);
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
    effectiveStyle.debugFillProperties(properties);
  }
}
