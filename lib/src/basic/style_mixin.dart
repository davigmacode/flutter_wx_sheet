import 'package:flutter/foundation.dart';
import 'package:wx_sheet/wx_event.dart';
import 'style.dart';
import 'event.dart';

mixin WxDrivenSheetProperty<T extends WxSheetStyle> on WxSheetStyle
    implements DrivenProperty<T> {
  /// Whether the resolved style should be merged with the previous resolved style.
  ///
  /// If `true`, the resolved style will be combined with the previous style.
  /// Otherwise, the resolved style will completely replace the previous one.
  bool? get inherits => true;

  /// The style to be applied when the widget is selected.
  T? get selectedStyle => null;

  /// The style to be applied when the widget is in an indeterminate state.
  T? get indeterminateStyle => null;

  /// The style to be applied when the widget has focus.
  T? get focusedStyle => null;

  /// The style to be applied when the mouse hovers over the widget.
  T? get hoveredStyle => null;

  /// The style to be applied when the widget is pressed.
  T? get pressedStyle => null;

  /// The style to be applied when the widget is loading.
  T? get loadingStyle => null;

  /// The style to be applied when the widget is disabled.
  T? get disabledStyle => null;

  /// A map of driven styles, ordered by their priority.
  ///
  /// The styles in this map will be applied based on the order of the keys.
  /// The first matching style will be used.
  Map<WxSheetEvent, T?> get driven => {
        WxSheetEvent.selected: selectedStyle,
        WxSheetEvent.indeterminate: indeterminateStyle,
        WxSheetEvent.focused: focusedStyle,
        WxSheetEvent.hovered: hoveredStyle,
        WxSheetEvent.pressed: pressedStyle,
        WxSheetEvent.loading: loadingStyle,
        WxSheetEvent.disabled: disabledStyle,
      };

  /// Resolves the final style based on the given events.
  ///
  /// Iterates through the `driven` map and applies styles based on matching events.
  /// The `inherits` property determines whether styles are merged or replaced.
  @override
  T resolve(Set<WidgetEvent> events) {
    T style = this as T;
    for (final e in driven.entries) {
      if (events.contains(e.key)) {
        final evaluated = DrivenProperty.evaluate<T?>(e.value, events);
        style = resolveInherits(style, evaluated);
      }
    }
    return style;
  }

  /// Resolves the final style based on the accumulator and the given style.
  ///
  /// The implementation of this method should define how styles are merged or replaced.
  T resolveInherits(T accumulator, T? style);

  /// Fills the given diagnostic properties builder with information about the driven style.
  void debugFillDrivenStyle(DiagnosticPropertiesBuilder properties) {
    properties.add(DiagnosticsProperty('inherits', inherits));
    properties.add(DiagnosticsProperty('selectedStyle', selectedStyle));
    properties
        .add(DiagnosticsProperty('indeterminateStyle', indeterminateStyle));
    properties.add(DiagnosticsProperty('focusedStyle', focusedStyle));
    properties.add(DiagnosticsProperty('hoveredStyle', hoveredStyle));
    properties.add(DiagnosticsProperty('pressedStyle', pressedStyle));
    properties.add(DiagnosticsProperty('disabledStyle', disabledStyle));
  }
}
