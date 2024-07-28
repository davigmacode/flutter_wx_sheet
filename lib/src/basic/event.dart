import 'package:widget_event/widget_event.dart';

/// Interactive events that [Button] can take on
/// when receiving input from the user.
class WxSheetEvent extends WidgetEvent {
  const WxSheetEvent(super.value);

  /// The event when this widget has been selected.
  static const selected = WxSheetEvent('selected');

  /// The state when this item has been indeterminate.
  static const indeterminate = WxSheetEvent('indeterminate');

  /// The state when the user drags their mouse cursor over the given widget.
  static const hovered = WxSheetEvent('hovered');

  /// The state when the user navigates with the keyboard to a given widget.
  ///
  /// This can also sometimes be triggered when a widget is tapped. For example,
  /// when a [TextField] is tapped, it becomes [focused].
  static const focused = WxSheetEvent('focused');

  /// The state when the user is actively pressing down on the given widget.
  static const pressed = WxSheetEvent('pressed');

  /// The state when the user is actively pressing down on the given widget.
  static const loading = WxSheetEvent('loading');

  /// The state when this widget is disabled and cannot be interacted with.
  ///
  /// Disabled widgets should not respond to hover, focus, press, or drag
  /// interactions.
  static const disabled = WxSheetEvent('disabled');

  /// Checker for whether events considers [WxSheetEvent.selected] to be active.
  static bool isSelected(Set<WidgetEvent> events) {
    return events.contains(selected);
  }

  /// Checker for whether events considers [WxSheetEvent.indeterminate] to be active.
  static bool isIndeterminate(Set<WidgetEvent> events) {
    return events.contains(indeterminate);
  }

  /// Checker for whether events considers [WxSheetEvent.hovered] to be active.
  static bool isHovered(Set<WidgetEvent> events) {
    return events.contains(hovered);
  }

  /// Checker for whether events considers [WxSheetEvent.focused] to be active.
  static bool isFocused(Set<WidgetEvent> events) {
    return events.contains(focused);
  }

  /// Checker for whether events considers [WxSheetEvent.pressed] to be active.
  static bool isPressed(Set<WidgetEvent> events) {
    return events.contains(pressed);
  }

  /// Checker for whether events considers [WxSheetEvent.loading] to be active.
  static bool isLoading(Set<WidgetEvent> events) {
    return events.contains(loading);
  }

  /// Checker for whether events considers [WxSheetEvent.disabled] to be active.
  static bool isDisabled(Set<WidgetEvent> events) {
    return events.contains(disabled);
  }
}

typedef WxDrivenSheetStyleResolver<T> = DrivenPropertyResolver<T>;
