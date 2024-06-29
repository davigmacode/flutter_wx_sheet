import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:widget_event/widget_event.dart';
import 'package:wx_tile/wx_tile.dart';
import 'package:wx_anchor/wx_anchor.dart';
import 'package:wx_sheet/src/legacy_basic/main.dart';
import 'event.dart';
import 'style.dart';
import 'theme_data.dart';

class WxToggleSheetRender extends StatefulWidget {
  const WxToggleSheetRender({
    super.key,
    this.leading,
    this.trailing,
    this.tooltip,
    this.variant,
    this.severity,
    this.selected = false,
    this.loading = false,
    this.disabled = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.eventsController,
    this.curve,
    this.duration,
    this.style,
    required this.theme,
    required this.child,
  });

  /// {@template widgetarian.button.variant}
  /// Type of the button variant
  /// {@endtemplate}
  final WxSheetVariant? variant;

  /// {@template widgetarian.button.severity}
  /// Type of the button severity
  /// {@endtemplate}
  final WxSheetSeverity? severity;

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
  /// If [style] is an event driven [WxDrivenToggleSheetStyle],
  /// then [WxDrivenToggleSheetStyle.evaluate] is used for the following [WxToggleSheetEvent]s:
  ///
  ///  * [WxToggleSheetEvent.selected].
  ///  * [WxToggleSheetEvent.focused].
  ///  * [WxToggleSheetEvent.hovered].
  ///  * [WxToggleSheetEvent.pressed].
  ///  * [WxToggleSheetEvent.disabled].
  /// {@endtemplate}
  final WxToggleSheetStyle? style;

  /// {@template widgetarian.button.theme}
  /// The [WxToggleSheetThemeData] that provides fallback values.
  /// {@endtemplate}
  final WxToggleSheetThemeData theme;

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
  final Widget child;

  bool get enabled => !disabled && !loading;

  bool get canTap => enabled && hasCallback;

  bool get hasCallback {
    return onPressed != null || onSelected != null;
  }

  @override
  State<WxToggleSheetRender> createState() => WxToggleSheetRenderState();
}

class WxToggleSheetRenderState extends State<WxToggleSheetRender>
    with WidgetEventMixin<WxToggleSheetRender> {
  Curve get curve => widget.curve ?? widget.theme.curve;
  Duration get duration => widget.duration ?? widget.theme.duration;

  PointerDeviceKind? pointerDeviceKind;

  WxToggleSheetStyle style = const WxToggleSheetStyle();

  @protected
  void setStyle() {
    final fromProps = WxToggleSheetStyle(
      variant: widget.variant,
      severity: widget.severity,
    );
    final raw = fromProps.merge(widget.style);
    final specs = WxDrivenToggleSheetStyle.evaluate(raw, widgetEvents.value);
    final fallback = widget.theme.resolve(
      variant: specs?.variant,
      severity: specs?.severity,
    );
    final withFallback = fallback.merge(raw);
    final result =
        WxDrivenToggleSheetStyle.evaluate(withFallback, widgetEvents.value);

    style = WxToggleSheetStyle.from(result);
  }

  EdgeInsetsGeometry get padding {
    final padding = style.padding ?? EdgeInsets.zero;
    return padding.clamp(
      EdgeInsets.only(right: hasTrailing ? 8 : 0),
      EdgeInsetsGeometry.infinity,
    );
  }

  bool get hasLeading => widget.leading != null;
  bool get hasTrailing => widget.trailing != null;

  void onTap() {
    widget.onPressed?.call();
    widget.onSelected?.call(!widget.selected);
  }

  void onTapCancel() async {
    if (pointerDeviceKind == PointerDeviceKind.touch) {
      await Future.delayed(duration);
    }
    pointerDeviceKind = null;
    widgetEvents.toggle(WxToggleSheetEvent.pressed, false);
  }

  void onTapUp(TapUpDetails details) async {
    if (details.kind == PointerDeviceKind.touch) {
      await Future.delayed(duration);
    }
    pointerDeviceKind = null;
    widgetEvents.toggle(WxToggleSheetEvent.pressed, false);
  }

  void onTapDown(TapDownDetails details) {
    pointerDeviceKind = details.kind;
    widgetEvents.toggle(WxToggleSheetEvent.pressed, true);
  }

  void onHover(bool value) {
    // print('onHover: $value');
    widgetEvents.toggle(WxToggleSheetEvent.hovered, value);
  }

  void onFocus(bool value) {
    widgetEvents.toggle(WxToggleSheetEvent.focused, value);
  }

  @override
  void initState() {
    initWidgetEvents(widget.eventsController);
    widgetEvents.toggle(WxToggleSheetEvent.selected, widget.selected);
    widgetEvents.toggle(WxToggleSheetEvent.loading, widget.loading);
    widgetEvents.toggle(WxToggleSheetEvent.disabled, widget.disabled);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    setStyle();
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(WxToggleSheetRender oldWidget) {
    if (mounted) {
      updateWidgetEvents(oldWidget.eventsController, widget.eventsController);
      widgetEvents.toggle(WxToggleSheetEvent.selected, widget.selected);
      widgetEvents.toggle(WxToggleSheetEvent.loading, widget.loading);
      widgetEvents.toggle(WxToggleSheetEvent.disabled, widget.disabled);
      setStyle();
      super.didUpdateWidget(oldWidget);
    }
  }

  @override
  void didChangeWidgetEvents() {
    setStyle();
    SchedulerBinding.instance.scheduleFrameCallback((_) {
      super.didChangeWidgetEvents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      button: widget.canTap,
      enabled: widget.enabled,
      child: WxSheet(
        animated: true,
        selected: widget.selected,
        disabled: widget.disabled,
        curve: curve,
        duration: duration,
        style: style,
        padding: EdgeInsets.zero,
        wrapper: (context, sheetTheme, child) {
          final sheetStyle = sheetTheme.style;

          child = WxAnchor(
            curve: curve,
            duration: duration,
            disabled: !widget.canTap,
            autofocus: widget.autofocus,
            focusNode: widget.focusNode,
            overlayColor: sheetStyle.overlayColor,
            overlayOpacity: sheetStyle.overlayOpacity,
            overlayDisabled: sheetStyle.overlayDisabled,
            borderRadius: sheetStyle.borderRadius,
            onTap: onTap,
            onTapCancel: onTapCancel,
            onTapDown: onTapDown,
            onTapUp: onTapUp,
            onHover: onHover,
            onFocus: onFocus,
            child: child,
          );

          child = WxAnimatedTileTheme(
            curve: sheetTheme.curve,
            duration: sheetTheme.duration,
            data: WxTileThemeData(
              style: WxTileStyle(
                childExpanded: sheetStyle.foregroundExpanded,
                crossAxisAlignment: sheetStyle.foregroundAlign,
                mainAxisAlignment: sheetStyle.foregroundJustify,
                inline: sheetStyle.width != double.infinity,
                spacing: sheetStyle.foregroundSpacing,
                spacingEnforced: sheetStyle.foregroundLoosen,
              ),
            ),
            child: child,
          );

          return child;
        },
        child: AnimatedPadding(
          curve: curve,
          duration: duration,
          padding: padding,
          child: WxTile(
            leading: hasLeading
                ? DrivenWidget.evaluate(
                    widget.leading!,
                    widgetEvents.value,
                  )
                : null,
            trailing: hasTrailing
                ? DrivenWidget.evaluate(
                    widget.trailing!,
                    widgetEvents.value,
                  )
                : null,
            child: DefaultTextStyle.merge(
              textAlign: TextAlign.center,
              child: DrivenWidget.evaluate(
                widget.child,
                widgetEvents.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
