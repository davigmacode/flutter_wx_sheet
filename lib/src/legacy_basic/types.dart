import 'package:widget_event/widget_event.dart';
import 'style.dart';

enum WxSheetVariant {
  text,
  tonal,
  elevated,
  filled,
  outlined;

  /// Whether or not this is text variant
  bool get isText => this == WxSheetVariant.text;

  /// Whether or not this is tonal variant
  bool get isTonal => this == WxSheetVariant.tonal;

  /// Whether or not this is elevated variant
  bool get isElevated => this == WxSheetVariant.elevated;

  /// Whether or not this is filled variant
  bool get isFilled => this == WxSheetVariant.filled;

  /// Whether or not this is outlined variant
  bool get isOutlined => this == WxSheetVariant.outlined;
}

enum WxSheetSeverity {
  danger,
  warning,
  success,
  info;

  /// Whether or not this is danger severity
  bool get isDanger => this == WxSheetSeverity.danger;

  /// Whether or not this is warning severity
  bool get isWarning => this == WxSheetSeverity.warning;

  /// Whether or not this is success severity
  bool get isSuccess => this == WxSheetSeverity.success;

  /// Whether or not this is info severity
  bool get isInfo => this == WxSheetSeverity.info;
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

/// Map of [WxSheetStyle] by [WxSheetVariant] as key
typedef WxSheetStyleByVariant = Map<WxSheetVariant, WxSheetStyle?>;

extension WxSheetStyleByVariantUtils on WxSheetStyleByVariant {
  /// Creates a copy of this [WxSheetStyleByVariant] but with
  /// the given fields replaced with the new values.
  WxSheetStyleByVariant merge(WxSheetStyleByVariant? variants) {
    final entries = WxSheetVariant.values.map((key) {
      final other = variants?[key];
      final style = this[key]?.merge(other) ?? other;
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }

  /// Linearly interpolate with another [WxSheetStyleByVariant] object.
  WxSheetStyleByVariant lerp(WxSheetStyleByVariant? other, double t) {
    final entries = WxSheetVariant.values.map((key) {
      final style = WxSheetStyle.lerp(this[key], other?[key], t);
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }
}
