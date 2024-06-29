import 'package:widget_event/widget_event.dart';

/// Interactive events that [Button] can take on
/// when receiving input from the user.
abstract class WxTapSheetEvent extends WidgetEvent {
  const WxTapSheetEvent(super.value);

  /// The state when this widget is disabled and cannot be interacted with.
  ///
  /// Disabled widgets should not respond to hover, focus, press, or drag
  /// interactions.
  static const disabled = WidgetEvent.disabled;

  /// The state when the user drags their mouse cursor over the given widget.
  static const hovered = WidgetEvent.hovered;

  /// The state when the user navigates with the keyboard to a given widget.
  ///
  /// This can also sometimes be triggered when a widget is tapped. For example,
  /// when a [TextField] is tapped, it becomes [focused].
  static const focused = WidgetEvent.focused;

  /// The state when the user is actively pressing down on the given widget.
  static const pressed = WidgetEvent.pressed;

  /// The state when the user is actively pressing down on the given widget.
  static const loading = WidgetEvent.loading;

  /// Checker for whether events considers [WxTapSheetEvent.disabled] to be active.
  static bool isDisabled(Set<WidgetEvent> events) {
    return events.contains(disabled);
  }

  /// Checker for whether events considers [WxTapSheetEvent.hovered] to be active.
  static bool isHovered(Set<WidgetEvent> events) {
    return events.contains(hovered);
  }

  /// Checker for whether events considers [WxTapSheetEvent.focused] to be active.
  static bool isFocused(Set<WidgetEvent> events) {
    return events.contains(focused);
  }

  /// Checker for whether events considers [WxTapSheetEvent.pressed] to be active.
  static bool isPressed(Set<WidgetEvent> events) {
    return events.contains(pressed);
  }

  /// Checker for whether events considers [WxTapSheetEvent.loading] to be active.
  static bool isLoading(Set<WidgetEvent> events) {
    return events.contains(loading);
  }
}
