import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_event.dart';
import 'style.dart';

/// A class representing the different variants in a sheet can have.
class WxSheetVariant {
  /// Creates a new instance of `WxSheetVariant` with the provided value.
  const WxSheetVariant(this.value);

  /// Creates a [WxSheetVariant] from another one
  /// that probably inherited from this class.
  WxSheetVariant.from(WxSheetVariant? other)
      : value = other?.value ?? 'undefined';

  /// The value of the variant.
  final String value;

  @override
  bool operator ==(Object other) {
    return other is WxSheetVariant && value == other.value;
  }

  @override
  int get hashCode => value.hashCode;

  /// Returns a string representation of the `WxSheetVariant`
  /// in the format "WxSheetVariant.$value".
  @override
  String toString() => 'WxSheetVariant.$value';

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

  /// An undefined constant variant.
  static const undefined = WxSheetVariant('undefined');
}

/// Represents the different sizes available
/// for a sheet in the widgetarian platform.
class WxSheetSize {
  /// Creates a new `WxSheetSize` instance.
  const WxSheetSize(this.value);

  /// Creates a [WxSheetSize] from another one
  /// that probably inherited from this class.
  WxSheetSize.from(WxSheetSize? other) : value = other?.value ?? 'undefined';

  /// The size value of the sheet.
  final String value;

  @override
  bool operator ==(Object other) {
    return other is WxSheetSize && value == other.value;
  }

  @override
  int get hashCode => value.hashCode;

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

  /// An undefined constant size.
  static const undefined = WxSheetSize('undefined');
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

/// Data class representing the context of a sheet style resolver.
///
/// Contains information about the sheet's variant, size, severity, and presence of
/// leading, trailing content, and callbacks. Used by `WxSheetStyleResolver` to
/// determine the appropriate sheet style based on these factors.
@immutable
class WxSheetStyleResolverData {
  /// The variant of the sheet.
  final WxSheetVariant? variant;

  /// The size of the sheet.
  final WxSheetSize? size;

  /// The severity level of the sheet (optional).
  final Color? severity;

  /// Whether the sheet has leading content.
  final bool hasLeading;

  /// Whether the sheet has trailing content.
  final bool hasTrailing;

  /// Whether the sheet has callbacks (onPressed or onSelected).
  final bool hasCallback;

  /// Returns the effective variant of the sheet,
  /// defaulting to `WxSheetVariant.undefined` if not provided.
  WxSheetVariant get effectiveVariant => WxSheetVariant.from(variant);

  /// Returns the effective size of the sheet,
  /// defaulting to `WxSheetSize.undefined` if not provided.
  WxSheetSize get effectiveSize => WxSheetSize.from(size);

  /// Creates a [WxSheetStyleResolverData] instance
  const WxSheetStyleResolverData({
    this.variant,
    this.size,
    this.severity,
    this.hasLeading = false,
    this.hasTrailing = false,
    this.hasCallback = false,
  });

  /// Creates a copy of the data with optional modifications.
  WxSheetStyleResolverData copyWith({
    WxSheetVariant? variant,
    WxSheetSize? size,
    Color? severity,
    bool? hasLeading,
    bool? hasTrailing,
    bool? hasCallback,
  }) {
    return WxSheetStyleResolverData(
      variant: variant ?? this.variant,
      size: size ?? this.size,
      severity: severity ?? this.severity,
      hasLeading: hasLeading ?? this.hasLeading,
      hasTrailing: hasTrailing ?? this.hasTrailing,
      hasCallback: hasCallback ?? this.hasCallback,
    );
  }

  /// Merges another `WxSheetStyleResolverData` into this one.
  ///
  /// Creates a new instance with values from both objects, prioritizing the
  /// values from the other object if they are not null.
  WxSheetStyleResolverData merge(WxSheetStyleResolverData? other) {
    if (other == null) return this;
    return copyWith(
      variant: other.variant,
      size: other.size,
      severity: other.severity,
      hasLeading: other.hasLeading,
      hasTrailing: other.hasTrailing,
      hasCallback: other.hasCallback,
    );
  }
}

/// Defines a function used to resolve
/// the sheet style based on the variant and severity.
typedef WxSheetStyleResolver<T extends WxSheetStyle> = T Function(
  WxSheetStyleResolverData data,
);

/// A generic function type that forwards a value of type `T` to another function.
///
/// This type is used for functions that simply pass a value to another function
/// with the possibility of modifying it before forwarding.
typedef ValueForwarder<T> = T Function(T value);
