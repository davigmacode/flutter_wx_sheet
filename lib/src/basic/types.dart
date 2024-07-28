import 'package:flutter/material.dart';
import 'package:widget_event/widget_event.dart';
import 'style.dart';

/// A class representing the different variants in a sheet can have.
class WxSheetVariant {
  /// Creates a new instance of `WxSheetVariant` with the provided value.
  const WxSheetVariant(this.value);

  /// The value of the variant.
  final String value;

  /// Returns a string representation of the `WxSheetVariant`
  /// in the format "WxSheetVariant.$value".
  @override
  String toString() => 'WxSheetVariant.$value';

  @override
  bool operator ==(Object other) {
    return other is WxSheetVariant && value == other.value;
  }

  @override
  int get hashCode => value.hashCode;

  /// A constant variant representing textual content.
  static const text = WxSheetVariant('text');

  /// A constant variant representing tonal variations.
  static const tonal = WxSheetVariant('tonal');

  /// A constant variant representing elevated content.
  static const elevated = WxSheetVariant('elevated');

  /// A constant variant representing filled content.
  static const filled = WxSheetVariant('filled');

  /// A constant variant representing outlined content.
  static const outlined = WxSheetVariant('outlined');
}

/// Represents the different sizes available
/// for a sheet in the widgetarian platform.
class WxSheetSize {
  /// Creates a new `WxSheetSize` instance.
  const WxSheetSize(this.value);

  /// The size value of the sheet.
  final String value;

  /// Returns a string representation of the `WxSheetSize`
  /// in the format "WxSheetSize.$value".
  @override
  String toString() => 'WxSheetSize.$value';

  /// Represents the tiny sheet size.
  static const tiny = WxSheetSize('tiny');

  /// Represents the small sheet size.
  static const small = WxSheetSize('small');

  /// Represents the medium sheet size.
  static const medium = WxSheetSize('medium');

  /// Represents the large sheet size.
  static const large = WxSheetSize('large');

  /// Represents the huge sheet size.
  static const huge = WxSheetSize('huge');
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

/// Defines a function used to resolve
/// the sheet style based on the variant and severity.
typedef WxSheetStyleResolver<T extends WxSheetStyle> = T Function({
  WxSheetVariant? variant,
  WxSheetSize? size,
  Color? severity,
});
