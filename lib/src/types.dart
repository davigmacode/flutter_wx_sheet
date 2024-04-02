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

/// The shape to use when rendering a [Border] or [BoxDecoration].
///
/// Consider using [ShapeBorder] subclasses directly (with [ShapeDecoration]),
/// instead of using [BoxShape] and [Border], if the shapes will need to be
/// interpolated or animated. The [Border] class cannot interpolate between
/// different shapes.
enum WxSheetShape {
  /// An axis-aligned, 2D rectangle. May have rounded corners (described by a
  /// [BorderRadius]). The edges of the rectangle will match the edges of the box
  /// into which the [Border] or [BoxDecoration] is painted.
  ///
  /// See also:
  ///
  ///  * [RoundedRectangleBorder], the equivalent [ShapeBorder].
  rectangle,

  /// A circle centered in the middle of the box into which the [Border] is painted.
  /// The diameter of the circle is the shortest dimension of the box,
  /// either the width or the height, such that the circle
  /// touches the edges of the box.
  ///
  /// See also:
  ///
  ///  * [CircleBorder], the equivalent [ShapeBorder].
  circle,

  /// A border that fits a stadium-shaped border (a box with semicircles on the ends)
  /// within the rectangle of the widget it is applied to.
  stadium;

  /// Whether or not this is rectangle shape
  bool get isRectangle => this == WxSheetShape.rectangle;

  /// Whether or not this is circle shape
  bool get isCircle => this == WxSheetShape.circle;

  /// Whether or not this is stadium shape
  bool get isStadium => this == WxSheetShape.stadium;
}
