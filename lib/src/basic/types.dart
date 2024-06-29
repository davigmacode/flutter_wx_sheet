import 'package:flutter/material.dart';
import 'package:widget_event/widget_event.dart';
import 'style.dart';
import 'theme_data.dart';

class WxSheetVariant {
  const WxSheetVariant(this.value);
  final String value;

  @override
  String toString() => 'WxSheetVariant.$value';

  static const text = WxSheetVariant('text');
  static const tonal = WxSheetVariant('tonal');
  static const elevated = WxSheetVariant('elevated');
  static const filled = WxSheetVariant('filled');
  static const outlined = WxSheetVariant('outlined');
}

/// Manages a set of [WxTapSheetEvent]s and notifies listeners of changes.
///
/// Used by widgets that expose their internal event
/// for the sake of extensions that add support for additional events.
///
/// The controller's value is its current set of events.
/// Listeners are notified whenever the value changes.
/// The value should only be changed with update;
/// it should not be modified directly.
typedef WxSheetEventController = WidgetEventController;

/// Set of WidgetEvent
typedef WxSheetEvents = WidgetEvents;

typedef WxSheetStyleResolver = WxSheetStyle? Function(
  WxSheetVariant? variant,
  Color? severity,
);

typedef WxSheetBuilder<T extends WxSheetThemeData<T>> = Widget? Function(
  BuildContext context,
  WxSheetThemeData<T> theme,
  Widget? child,
);
