import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:wx_utils/wx_utils.dart';
import 'types.dart';

/// The style to be applied to the sheet widget
@immutable
class WxSheetStyle with Diagnosticable {
  /// {@template widgetarian.sheet.style.direction}
  /// The direction to use as the main axis.
  /// {@endtemplate}
  final Axis? direction;

  /// {@template widgetarian.sheet.style.variant}
  /// Type of the sheet variant
  /// {@endtemplate}
  final WxSheetVariant? variant;

  /// {@template widgetarian.sheet.style.size}
  /// Type of the sheet size
  /// {@endtemplate}
  final WxSheetSize? size;

  /// {@template widgetarian.sheet.style.severity}
  /// Type of the sheet severity
  /// {@endtemplate}
  final Color? severity;

  /// {@template widgetarian.sheet.style.width}
  /// The horizontal extent of the sheet widget.
  /// {@endtemplate}
  final double? width;

  /// {@template widgetarian.sheet.style.height}
  /// The vertical extent of the sheet widget.
  /// {@endtemplate}
  final double? height;

  /// {@template widgetarian.sheet.style.minWidth}
  /// The minimum width of the sheet widget
  /// {@endtemplate}
  final double? minWidth;

  /// {@template widgetarian.sheet.style.maxWidth}
  /// The maximum width of the sheet widget
  /// {@endtemplate}
  final double? maxWidth;

  /// {@template widgetarian.sheet.style.minHeight}
  /// The minimum height of the sheet widget
  /// {@endtemplate}
  final double? minHeight;

  /// {@template widgetarian.sheet.style.maxHeight}
  /// The maximum height of the sheet widget
  /// {@endtemplate}
  final double? maxHeight;

  /// {@template widgetarian.sheet.style.margin}
  /// Empty space to surround the outside sheet.
  /// {@endtemplate}
  final EdgeInsetsGeometry? margin;

  /// {@template widgetarian.sheet.style.padding}
  /// The padding between the contents of the sheet and the outside sheet.
  /// {@endtemplate}
  final EdgeInsetsGeometry? padding;

  /// {@template widgetarian.sheet.style.spacing}
  /// How much space to place between sheet's foreground widget in a run in the main axis.
  /// {@endtemplate}
  final double? spacing;

  /// {@template widgetarian.sheet.style.adaptiveSpacing}
  /// Whether the spacing is forced to child with no leading or trailing.
  /// {@endtemplate}
  final bool? adaptiveSpacing;

  /// {@template widgetarian.sheet.style.scale}
  /// Moves a child element a certain distance away from its default position.
  /// {@endtemplate}
  final Offset? offset;

  /// {@template widgetarian.sheet.style.scale}
  /// Adjust the size of the sheet relative to its original size.
  /// A value of 1 maintains the original size,
  /// while values greater than 1 enlarge
  /// and values less than 1 shrink the element.
  /// {@endtemplate}
  final double? scale;

  /// {@template widgetarian.sheet.style.rotate}
  /// Rotates sheet element by a specified number of degrees.
  /// Use a positive value for clockwise rotation
  /// or a negative value for counter-clockwise rotation.
  /// {@endtemplate}
  final double? rotate;

  /// {@template widgetarian.sheet.style.flipX}
  /// Controls whether the sheet widget is flipped horizontally (mirrored).
  /// Setting flipX to true will cause the sheet
  /// to be displayed as if reflected across a vertical axis.
  /// {@endtemplate}
  final bool? flipX;

  /// {@template widgetarian.sheet.style.flipY}
  /// Controls whether the sheet widget is flipped vertically (inverted).
  /// Setting flipY to true will cause the sheet
  /// to be displayed as if reflected across a horizontal axis.
  /// {@endtemplate}
  final bool? flipY;

  /// {@template widgetarian.sheet.style.opacity}
  /// The sheet opacity when pressed, hovered over, or focused.
  /// {@endtemplate}
  final double? opacity;

  /// {@template widgetarian.sheet.style.alignment}
  /// Align the [child] within the sheet.
  ///
  /// If non-null, the sheet will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  /// {@endtemplate}
  final Alignment? alignment;

  /// {@template widgetarian.sheet.style.clipBehavior}
  /// The sheet's content will be clipped (or not) according to this option.
  ///
  /// See the enum [Clip] for details of all possible options and their common use cases.
  /// {@endtemplate}
  final Clip? clipBehavior;

  /// {@template widgetarian.sheet.style.overlayDisabled}
  /// Whether the overlay is disabled or not
  /// {@endtemplate}
  final bool? overlayDisabled;

  /// {@template widgetarian.sheet.style.overlayColor}
  /// Defines the overlay colors.
  /// {@endtemplate}
  final Color? overlayColor;

  /// {@template widgetarian.sheet.style.overlayOpacity}
  /// Opacity to be apply to [overlayColor].
  /// {@endtemplate}
  final double? overlayOpacity;

  /// {@template widgetarian.sheet.style.surfaceTint}
  /// The color used as an overlay on [color] to indicate elevation.
  ///
  /// If this is null, no overlay will be applied. Otherwise the this
  /// color will be composited on top of [color] with an opacity related
  /// to [elevation] and used to paint the background of the card.
  ///
  /// The default is null.
  /// {@endtemplate}
  final Color? surfaceTint;

  /// {@template widgetarian.sheet.style.elevationColor}
  /// When [elevation] is non zero the color
  /// to use for the sheet's shadow color.
  /// {@endtemplate}
  final Color? elevationColor;

  /// {@template widgetarian.sheet.style.elevation}
  /// The sheet's z-coordinate relative to
  /// the parent at which to place this physical object.
  ///
  /// The value is non-negative.
  /// {@endtemplate}
  final double? elevation;

  /// {@template widgetarian.sheet.style.tileAlign}
  /// Cross axis alignment of the foreground widget
  /// {@endtemplate}
  final CrossAxisAlignment? tileAlign;

  /// {@template widgetarian.sheet.style.tileJustify}
  /// Main axis alignment of the foreground widget
  /// {@endtemplate}
  final MainAxisAlignment? tileJustify;

  /// {@template widgetarian.sheet.style.tileWrap}
  /// Controls how the child widget or (title and subtitle)
  /// fills its available space (expand or wrap content).
  /// {@endtemplate}
  final bool? tileWrap;

  /// {@template widgetarian.sheet.style.textStyle}
  /// The style to be applied to the sheet's label.
  ///
  /// The default label style is [TextTheme.bodyText1] from the overall
  /// theme's [ThemeData.textTheme].
  //
  /// This only has an effect on widgets that respect the [DefaultTextStyle],
  /// such as [Text].
  /// {@endtemplate}
  final TextStyle? textStyle;

  /// {@template widgetarian.sheet.style.textAlign}
  /// The align to be applied to the sheet's label.
  //
  /// This only has an effect on widgets that respect the [DefaultTextStyle],
  /// such as [Text].
  /// {@endtemplate}
  final TextAlign? textAlign;

  /// {@template widgetarian.sheet.style.textSpacing}
  /// The gap between the [title] and the [subtitle] widgets.
  /// {@endtemplate}
  final double? textSpacing;

  /// {@template widgetarian.sheet.style.textColor}
  /// The text color to be applied to title and subtitle.
  /// {@endtemplate}
  final Color? textColor;

  /// {@template widgetarian.sheet.style.textOverflow}
  /// The text overflow to be applied to title and subtitle.
  /// {@endtemplate}
  final TextOverflow? textOverflow;

  /// {@template widgetarian.sheet.style.textSoftWrap}
  /// The text softWrap to be applied to title and subtitle.
  /// {@endtemplate}
  final bool? textSoftWrap;

  /// {@template widgetarian.sheet.style.textWidthBasis}
  /// The text width basis to be applied to title and subtitle.
  /// {@endtemplate}
  final TextWidthBasis? textWidthBasis;

  /// {@template widgetarian.sheet.style.foregroundColor}
  /// The color to be applied to the sheet's label, and icon
  /// {@endtemplate}
  final Color? foregroundColor;

  /// {@template widgetarian.sheet.style.foregroundOpacity}
  /// Opacity to be apply to [foregroundColor].
  /// {@endtemplate}
  final double? foregroundOpacity;

  /// {@template widgetarian.sheet.style.foregroundAlpha}
  /// Alpha to be apply to [foregroundColor].
  /// {@endtemplate}
  final int? foregroundAlpha;

  /// {@template widgetarian.sheet.style.backgroundColor}
  /// Color to be used for the sheet's background.
  /// {@endtemplate}
  final Color? backgroundColor;

  /// {@template widgetarian.sheet.style.backgroundOpacity}
  /// Opacity to be apply to [backgroundColor].
  /// {@endtemplate}
  final double? backgroundOpacity;

  /// {@template widgetarian.sheet.style.backgroundAlpha}
  /// Alpha to be apply to [backgroundColor].
  /// {@endtemplate}
  final int? backgroundAlpha;

  /// {@template widgetarian.sheet.style.borderColor}
  /// Color to be used for the sheet's border.
  /// {@endtemplate}
  final Color? borderColor;

  /// {@template widgetarian.sheet.style.borderOpacity}
  /// Opacity to be apply to [borderColor].
  /// {@endtemplate}
  final double? borderOpacity;

  /// {@template widgetarian.sheet.style.borderAlpha}
  /// Alpha to be apply to [borderColor].
  /// {@endtemplate}
  final int? borderAlpha;

  /// {@template widgetarian.sheet.style.borderWidth}
  /// The width of this side of the sheet's border, in logical pixels.
  /// {@endtemplate}
  final double? borderWidth;

  /// {@template widgetarian.sheet.style.borderRadius}
  /// The radii for each corner of the sheet's border.
  /// {@endtemplate}
  final BorderRadius? borderRadius;

  /// {@template widgetarian.sheet.style.borderStyle}
  /// The style of this side of the sheet's border.
  ///
  /// To omit a side, set [borderStyle] to [BorderStyle.none].
  /// This skips painting the border, but the border still has a [borderWidth].
  /// {@endtemplate}
  final BorderStyle? borderStyle;

  /// {@template widgetarian.sheet.style.borderOffset}
  /// The relative position of the stroke on a [BorderSide] in an
  /// [OutlinedBorder] or [Border].
  /// {@endtemplate}
  final double? borderOffset;

  /// {@template widgetarian.sheet.style.border}
  /// A border to draw.
  /// {@endtemplate}
  final OutlinedBorder? border;

  /// {@template widgetarian.sheet.style.image}
  /// An image to paint inside the shape (clipped to its outline).
  ///
  /// The image is drawn over the [color] or [gradient].
  /// {@endtemplate}
  final DecorationImage? image;

  /// {@template widgetarian.sheet.style.shadows}
  /// A list of shadows cast by the [border].
  /// {@endtemplate}
  final List<BoxShadow>? shadows;

  /// {@template widgetarian.sheet.style.gradient}
  /// A gradient to use when filling the shape.
  ///
  /// The gradient is under the [image].
  ///
  /// If a [color] is specified, [gradient] must be null.
  /// {@endtemplate}
  final Gradient? gradient;

  /// {@template widgetarian.sheet.style.iconColor}
  /// Color to be used for the icon's inside the sheet.
  /// {@endtemplate}
  final Color? iconColor;

  /// {@template widgetarian.sheet.style.iconOpacity}
  /// Opacity to be apply to [iconColor].
  /// {@endtemplate}
  final double? iconOpacity;

  /// {@template widgetarian.sheet.style.iconSize}
  /// The size of the icon's inside the sheet, in logical pixels.
  /// {@endtemplate}
  final double? iconSize;

  /// {@template widgetarian.sheet.style.titleStyle}
  /// The text style to be applied to title.
  /// {@endtemplate}
  final TextStyle? titleStyle;

  /// {@template widgetarian.sheet.style.subtitleStyle}
  /// The text style to be applied to subtitle.
  /// {@endtemplate}
  final TextStyle? subtitleStyle;

  /// {@template widgetarian.sheet.style.titleSize}
  /// The font size to be applied to title.
  /// {@endtemplate}
  final double? titleSize;

  /// {@template widgetarian.sheet.style.subtitleSize}
  /// The font size to be applied to title.
  /// {@endtemplate}
  final double? subtitleSize;

  /// {@template widgetarian.sheet.style.titleColor}
  /// The text color to be applied to title.
  /// {@endtemplate}
  final Color? titleColor;

  /// {@template widgetarian.sheet.style.subtitleColor}
  /// The text color to be applied to subtitle.
  /// {@endtemplate}
  final Color? subtitleColor;

  /// {@template widgetarian.sheet.style.titleMaxLines}
  /// The text max lines to be applied to title.
  /// {@endtemplate}
  final int? titleMaxLines;

  /// {@template widgetarian.sheet.style.subtitleMaxLines}
  /// The text max lines to be applied to subtitle.
  /// {@endtemplate}
  final int? subtitleMaxLines;

  /// {@template widgetarian.sheet.style.titleWeight}
  /// The font weight to be applied to title.
  /// {@endtemplate}
  final FontWeight? titleWeight;

  /// {@template widgetarian.sheet.style.subtitleWeight}
  /// The font weight to be applied to subtitle.
  /// {@endtemplate}
  final FontWeight? subtitleWeight;

  /// constraints to apply to the sheet widget
  BoxConstraints get constraints => minWidth != null ||
          minHeight != null ||
          maxWidth != null ||
          maxHeight != null
      ? BoxConstraints(
          minHeight: minHeight ?? 0,
          minWidth: minWidth ?? 0,
          maxWidth: maxWidth ?? double.infinity,
          maxHeight: maxHeight ?? double.infinity,
        )
      : const BoxConstraints.tightFor();

  /// Whether or not this is text variant
  bool get isText => variant == WxSheetVariant.text;

  /// Whether or not this is tonal variant
  bool get isTonal => variant == WxSheetVariant.tonal;

  /// Whether or not this is filled variant
  bool get isFilled => variant == WxSheetVariant.filled;

  /// Whether or not this is elevated variant
  bool get isElevated => variant == WxSheetVariant.elevated;

  /// Whether or not this is outlined variant
  bool get isOutlined => variant == WxSheetVariant.outlined;

  /// An [WxSheetStyle] with some reasonable disabled values.
  static const disabledForegroundAlpha = 0x61; // 38%
  static const disabledBackgroundAlpha = 0x0c; // 38% * 12% = 5%
  static const disabledBorderAlpha = 0x0c; // 38% * 12% = 5%

  /// [WxSheetStyle] with an empty value.
  const WxSheetStyle({
    this.direction,
    this.variant,
    this.size,
    this.severity,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.margin,
    this.padding,
    this.spacing,
    this.adaptiveSpacing,
    this.offset,
    this.scale,
    this.rotate,
    this.flipX,
    this.flipY,
    this.opacity,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
    this.surfaceTint,
    this.elevationColor,
    this.elevation,
    this.tileAlign,
    this.tileJustify,
    this.tileWrap,
    this.textStyle,
    this.textAlign,
    this.textSpacing,
    this.textColor,
    this.textOverflow,
    this.textSoftWrap,
    this.textWidthBasis,
    this.foregroundColor,
    this.foregroundOpacity,
    this.foregroundAlpha,
    this.backgroundColor,
    this.backgroundOpacity,
    this.backgroundAlpha,
    this.borderColor,
    this.borderOpacity,
    this.borderAlpha,
    this.borderWidth,
    this.borderRadius,
    this.borderStyle,
    this.borderOffset,
    this.border,
    this.image,
    this.shadows,
    this.gradient,
    this.iconColor,
    this.iconOpacity,
    this.iconSize,
    this.titleStyle,
    this.subtitleStyle,
    this.titleSize,
    this.subtitleSize,
    this.titleColor,
    this.subtitleColor,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.titleWeight,
    this.subtitleWeight,
  });

  /// Create a [WxSheetStyle] from another style
  WxSheetStyle.from(WxSheetStyle? other)
      : direction = other?.direction,
        variant = other?.variant,
        size = other?.size,
        severity = other?.severity,
        width = other?.width,
        height = other?.height,
        minWidth = other?.minWidth,
        maxWidth = other?.maxWidth,
        minHeight = other?.minHeight,
        maxHeight = other?.maxHeight,
        margin = other?.margin,
        padding = other?.padding,
        spacing = other?.spacing,
        adaptiveSpacing = other?.adaptiveSpacing,
        offset = other?.offset,
        scale = other?.scale,
        rotate = other?.rotate,
        flipX = other?.flipX,
        flipY = other?.flipY,
        opacity = other?.opacity,
        alignment = other?.alignment,
        clipBehavior = other?.clipBehavior,
        overlayDisabled = other?.overlayDisabled,
        overlayColor = other?.overlayColor,
        overlayOpacity = other?.overlayOpacity,
        surfaceTint = other?.surfaceTint,
        elevationColor = other?.elevationColor,
        elevation = other?.elevation,
        tileAlign = other?.tileAlign,
        tileJustify = other?.tileJustify,
        tileWrap = other?.tileWrap,
        textStyle = other?.textStyle,
        textAlign = other?.textAlign,
        textSpacing = other?.textSpacing,
        textColor = other?.textColor,
        textOverflow = other?.textOverflow,
        textSoftWrap = other?.textSoftWrap,
        textWidthBasis = other?.textWidthBasis,
        foregroundColor = other?.foregroundColor,
        foregroundOpacity = other?.foregroundOpacity,
        foregroundAlpha = other?.foregroundAlpha,
        backgroundColor = other?.backgroundColor,
        backgroundOpacity = other?.backgroundOpacity,
        backgroundAlpha = other?.backgroundAlpha,
        borderColor = other?.borderColor,
        borderOpacity = other?.borderOpacity,
        borderAlpha = other?.borderAlpha,
        borderWidth = other?.borderWidth,
        borderRadius = other?.borderRadius,
        borderStyle = other?.borderStyle,
        borderOffset = other?.borderOffset,
        border = other?.border,
        image = other?.image,
        shadows = other?.shadows,
        gradient = other?.gradient,
        iconColor = other?.iconColor,
        iconOpacity = other?.iconOpacity,
        iconSize = other?.iconSize,
        titleStyle = other?.titleStyle,
        subtitleStyle = other?.subtitleStyle,
        titleSize = other?.titleSize,
        subtitleSize = other?.subtitleSize,
        titleColor = other?.titleColor,
        subtitleColor = other?.subtitleColor,
        titleMaxLines = other?.titleMaxLines,
        subtitleMaxLines = other?.subtitleMaxLines,
        titleWeight = other?.titleWeight,
        subtitleWeight = other?.subtitleWeight;

  /// Creates a copy of this [WxSheetStyle] but with
  /// [padding] is [EdgeInsets.zero] and squared size.
  WxSheetStyle icon({
    OutlinedBorder? border,
    double? radius,
  }) {
    return copyWith(
      border: border ?? const CircleBorder(),
      width: radius != null ? radius * 2 : null,
      height: radius != null ? radius * 2 : null,
      padding: EdgeInsets.zero,
    );
  }

  /// Creates a copy of this [WxSheetStyle] but with
  /// the [width] replaced with [double.infinity].
  WxSheetStyle block({
    bool? tileWrap,
    CrossAxisAlignment? tileAlign,
    MainAxisAlignment? tileJustify,
  }) {
    return copyWith(
      width: double.infinity,
      minWidth: double.infinity,
      maxWidth: double.infinity,
      tileWrap: tileWrap ?? true,
      tileAlign: tileAlign,
      tileJustify: tileJustify,
    );
  }

  /// Creates a copy of this [WxSheetStyle] but with
  /// the given fields replaced with the new values.
  WxSheetStyle copyWith({
    Axis? direction,
    WxSheetVariant? variant,
    WxSheetSize? size,
    Color? severity,
    double? width,
    double? height,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? spacing,
    bool? adaptiveSpacing,
    Offset? offset,
    double? scale,
    double? rotate,
    bool? flipX,
    bool? flipY,
    double? opacity,
    Alignment? alignment,
    Clip? clipBehavior,
    bool? overlayDisabled,
    Color? overlayColor,
    double? overlayOpacity,
    Color? surfaceTint,
    Color? elevationColor,
    double? elevation,
    CrossAxisAlignment? tileAlign,
    MainAxisAlignment? tileJustify,
    bool? tileWrap,
    TextStyle? textStyle,
    TextAlign? textAlign,
    double? textSpacing,
    Color? textColor,
    TextOverflow? textOverflow,
    bool? textSoftWrap,
    TextWidthBasis? textWidthBasis,
    Color? foregroundColor,
    double? foregroundOpacity,
    int? foregroundAlpha,
    Color? backgroundColor,
    double? backgroundOpacity,
    int? backgroundAlpha,
    Color? borderColor,
    double? borderOpacity,
    int? borderAlpha,
    double? borderWidth,
    BorderRadius? borderRadius,
    BorderStyle? borderStyle,
    double? borderOffset,
    OutlinedBorder? border,
    DecorationImage? image,
    List<BoxShadow>? shadows,
    Gradient? gradient,
    Color? iconColor,
    double? iconOpacity,
    double? iconSize,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    double? titleSize,
    double? subtitleSize,
    Color? titleColor,
    Color? subtitleColor,
    int? titleMaxLines,
    int? subtitleMaxLines,
    FontWeight? titleWeight,
    FontWeight? subtitleWeight,
  }) {
    return WxSheetStyle(
      direction: direction ?? this.direction,
      variant: variant ?? this.variant,
      size: size ?? this.size,
      severity: severity ?? this.severity,
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      maxWidth: maxWidth ?? this.maxWidth,
      minHeight: minHeight ?? this.minHeight,
      maxHeight: maxHeight ?? this.maxHeight,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      spacing: spacing ?? this.spacing,
      adaptiveSpacing: adaptiveSpacing ?? this.adaptiveSpacing,
      offset: offset ?? this.offset,
      scale: scale ?? this.scale,
      rotate: rotate ?? this.rotate,
      flipX: flipX ?? this.flipX,
      flipY: flipY ?? this.flipY,
      opacity: opacity ?? this.opacity,
      alignment: alignment ?? this.alignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      overlayDisabled: overlayDisabled ?? this.overlayDisabled,
      overlayColor: overlayColor ?? this.overlayColor,
      overlayOpacity: overlayOpacity ?? this.overlayOpacity,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      elevationColor: elevationColor ?? this.elevationColor,
      elevation: elevation ?? this.elevation,
      tileAlign: tileAlign ?? this.tileAlign,
      tileJustify: tileJustify ?? this.tileJustify,
      tileWrap: tileWrap ?? this.tileWrap,
      textStyle: textStyle ?? this.textStyle,
      textAlign: textAlign ?? this.textAlign,
      textSpacing: textSpacing ?? this.textSpacing,
      textColor: textColor ?? this.textColor,
      textOverflow: textOverflow ?? this.textOverflow,
      textSoftWrap: textSoftWrap ?? this.textSoftWrap,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundOpacity: foregroundOpacity ?? this.foregroundOpacity,
      foregroundAlpha: foregroundAlpha ?? this.foregroundAlpha,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundOpacity: backgroundOpacity ?? this.backgroundOpacity,
      backgroundAlpha: backgroundAlpha ?? this.backgroundAlpha,
      borderColor: borderColor ?? this.borderColor,
      borderOpacity: borderOpacity ?? this.borderOpacity,
      borderAlpha: borderAlpha ?? this.borderAlpha,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      borderStyle: borderStyle ?? this.borderStyle,
      borderOffset: borderOffset ?? this.borderOffset,
      border: border ?? this.border,
      image: image ?? this.image,
      shadows: shadows ?? this.shadows,
      gradient: gradient ?? this.gradient,
      iconColor: iconColor ?? this.iconColor,
      iconOpacity: iconOpacity ?? this.iconOpacity,
      iconSize: iconSize ?? this.iconSize,
      titleStyle: titleStyle ?? this.titleStyle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      titleSize: titleSize ?? this.titleSize,
      subtitleSize: subtitleSize ?? this.subtitleSize,
      titleColor: titleColor ?? this.titleColor,
      subtitleColor: subtitleColor ?? this.subtitleColor,
      titleMaxLines: titleMaxLines ?? this.titleMaxLines,
      subtitleMaxLines: subtitleMaxLines ?? this.subtitleMaxLines,
      titleWeight: titleWeight ?? this.titleWeight,
      subtitleWeight: subtitleWeight ?? this.subtitleWeight,
    );
  }

  /// Creates a copy of this [WxSheetStyle] but with
  /// the given fields replaced with the new values.
  WxSheetStyle merge(WxSheetStyle? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      direction: other.direction,
      variant: other.variant,
      size: other.size,
      severity: other.severity,
      width: other.width,
      height: other.height,
      minWidth: other.minWidth,
      maxWidth: other.maxWidth,
      minHeight: other.minHeight,
      maxHeight: other.maxHeight,
      margin: other.margin,
      padding: other.padding,
      spacing: other.spacing,
      adaptiveSpacing: other.adaptiveSpacing,
      offset: other.offset,
      scale: other.scale,
      rotate: other.rotate,
      flipX: other.flipX,
      flipY: other.flipY,
      opacity: other.opacity,
      alignment: other.alignment,
      clipBehavior: other.clipBehavior,
      overlayDisabled: other.overlayDisabled,
      overlayColor: other.overlayColor,
      overlayOpacity: other.overlayOpacity,
      surfaceTint: other.surfaceTint,
      elevationColor: other.elevationColor,
      elevation: other.elevation,
      tileAlign: other.tileAlign,
      tileJustify: other.tileJustify,
      tileWrap: other.tileWrap,
      textStyle: other.textStyle,
      textAlign: other.textAlign,
      textSpacing: other.textSpacing,
      textColor: other.textColor,
      textOverflow: other.textOverflow,
      textSoftWrap: other.textSoftWrap,
      textWidthBasis: other.textWidthBasis,
      foregroundColor: other.foregroundColor,
      foregroundOpacity: other.foregroundOpacity,
      foregroundAlpha: other.foregroundAlpha,
      backgroundColor: other.backgroundColor,
      backgroundOpacity: other.backgroundOpacity,
      backgroundAlpha: other.backgroundAlpha,
      borderColor: other.borderColor,
      borderOpacity: other.borderOpacity,
      borderAlpha: other.borderAlpha,
      borderWidth: other.borderWidth,
      borderRadius: other.borderRadius,
      borderStyle: other.borderStyle,
      borderOffset: other.borderOffset,
      border: other.border,
      image: other.image,
      shadows: other.shadows,
      gradient: other.gradient,
      iconColor: other.iconColor,
      iconOpacity: other.iconOpacity,
      iconSize: other.iconSize,
      titleStyle: other.titleStyle,
      subtitleStyle: other.subtitleStyle,
      titleSize: other.titleSize,
      subtitleSize: other.subtitleSize,
      titleColor: other.titleColor,
      subtitleColor: other.subtitleColor,
      titleMaxLines: other.titleMaxLines,
      subtitleMaxLines: other.subtitleMaxLines,
      titleWeight: other.titleWeight,
      subtitleWeight: other.subtitleWeight,
    );
  }

  /// Linearly interpolate between two [WxSheetStyle] objects.
  static WxSheetStyle? lerp(WxSheetStyle? a, WxSheetStyle? b, double t) {
    if (a == null && b == null) return null;
    return WxSheetStyle(
      direction: lerpEnum(a?.direction, b?.direction, t),
      variant: lerpEnum(a?.variant, b?.variant, t),
      size: lerpEnum(a?.size, b?.size, t),
      severity: Color.lerp(a?.severity, b?.severity, t),
      border: OutlinedBorder.lerp(a?.border, b?.border, t),
      width: lerpDouble(a?.width, b?.width, t),
      height: lerpDouble(a?.height, b?.height, t),
      minWidth: lerpDouble(a?.minWidth, b?.minWidth, t),
      maxWidth: lerpDouble(a?.maxWidth, b?.maxWidth, t),
      minHeight: lerpDouble(a?.minHeight, b?.minHeight, t),
      maxHeight: lerpDouble(a?.maxHeight, b?.maxHeight, t),
      margin: EdgeInsetsGeometry.lerp(a?.margin, b?.margin, t),
      padding: EdgeInsetsGeometry.lerp(a?.padding, b?.padding, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      adaptiveSpacing: lerpBool(a?.adaptiveSpacing, b?.adaptiveSpacing, t),
      offset: Offset.lerp(a?.offset, b?.offset, t),
      scale: lerpDouble(a?.scale, b?.scale, t),
      rotate: lerpDouble(a?.rotate, b?.rotate, t),
      flipX: lerpBool(a?.flipX, b?.flipX, t),
      flipY: lerpBool(a?.flipY, b?.flipY, t),
      opacity: lerpDouble(a?.opacity, b?.opacity, t),
      alignment: lerpEnum(a?.alignment, b?.alignment, t),
      clipBehavior: lerpEnum(a?.clipBehavior, b?.clipBehavior, t),
      overlayDisabled: lerpBool(a?.overlayDisabled, b?.overlayDisabled, t),
      overlayColor: Color.lerp(a?.overlayColor, b?.overlayColor, t),
      overlayOpacity: lerpDouble(a?.overlayOpacity, b?.overlayOpacity, t),
      surfaceTint: Color.lerp(a?.surfaceTint, b?.surfaceTint, t),
      elevationColor: Color.lerp(a?.elevationColor, b?.elevationColor, t),
      elevation: lerpDouble(a?.elevation, b?.elevation, t),
      tileAlign: lerpEnum(a?.tileAlign, b?.tileAlign, t),
      tileJustify: lerpEnum(a?.tileJustify, b?.tileJustify, t),
      tileWrap: lerpBool(a?.tileWrap, b?.tileWrap, t),
      textStyle: TextStyle.lerp(a?.textStyle, b?.textStyle, t),
      textAlign: lerpEnum(a?.textAlign, b?.textAlign, t),
      textSpacing: lerpDouble(a?.textSpacing, b?.textSpacing, t),
      textColor: Color.lerp(a?.textColor, b?.textColor, t),
      textOverflow: lerpEnum(a?.textOverflow, b?.textOverflow, t),
      textSoftWrap: lerpEnum(a?.textSoftWrap, b?.textSoftWrap, t),
      textWidthBasis: lerpEnum(a?.textWidthBasis, b?.textWidthBasis, t),
      foregroundColor: Color.lerp(a?.foregroundColor, b?.foregroundColor, t),
      foregroundOpacity:
          lerpDouble(a?.foregroundOpacity, b?.foregroundOpacity, t),
      foregroundAlpha: lerpInt(a?.foregroundAlpha, b?.foregroundAlpha, t),
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      backgroundOpacity:
          lerpDouble(a?.backgroundOpacity, b?.backgroundOpacity, t),
      backgroundAlpha: lerpInt(a?.backgroundAlpha, b?.backgroundAlpha, t),
      borderColor: Color.lerp(a?.borderColor, b?.backgroundColor, t),
      borderOpacity: lerpDouble(a?.borderOpacity, b?.borderOpacity, t),
      borderAlpha: lerpInt(a?.borderAlpha, b?.borderAlpha, t),
      borderWidth: lerpDouble(a?.borderWidth, b?.borderWidth, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      borderStyle: lerpEnum(a?.borderStyle, b?.borderStyle, t),
      borderOffset: lerpDouble(a?.borderOffset, b?.borderOffset, t),
      image: DecorationImage.lerp(a?.image, b?.image, t),
      gradient: Gradient.lerp(a?.gradient, b?.gradient, t),
      shadows: BoxShadow.lerpList(a?.shadows, b?.shadows, t),
      iconColor: Color.lerp(a?.iconColor, b?.iconColor, t),
      iconOpacity: lerpDouble(a?.iconOpacity, b?.iconOpacity, t),
      iconSize: lerpDouble(a?.iconSize, b?.iconSize, t),
      titleStyle: TextStyle.lerp(a?.titleStyle, b?.titleStyle, t),
      subtitleStyle: TextStyle.lerp(a?.subtitleStyle, b?.subtitleStyle, t),
      titleSize: lerpDouble(a?.titleSize, b?.titleSize, t),
      subtitleSize: lerpDouble(a?.subtitleSize, b?.subtitleSize, t),
      titleColor: Color.lerp(a?.titleColor, b?.titleColor, t),
      subtitleColor: Color.lerp(a?.subtitleColor, b?.subtitleColor, t),
      titleMaxLines: lerpInt(a?.titleMaxLines, b?.titleMaxLines, t),
      subtitleMaxLines: lerpInt(a?.subtitleMaxLines, b?.subtitleMaxLines, t),
      titleWeight: FontWeight.lerp(a?.titleWeight, b?.titleWeight, t),
      subtitleWeight: FontWeight.lerp(a?.subtitleWeight, b?.subtitleWeight, t),
    );
  }

  Map<String, dynamic> toMap() => {
        'direction': direction,
        'variant': variant,
        'size': size,
        'severity': severity,
        'border': border,
        'width': width,
        'height': height,
        'minWidth': minWidth,
        'maxWidth': maxWidth,
        'minHeight': minHeight,
        'maxHeight': maxHeight,
        'margin': margin,
        'padding': padding,
        'spacing': spacing,
        'adaptiveSpacing': adaptiveSpacing,
        'offset': offset,
        'scale': scale,
        'rotate': rotate,
        'flipX': flipX,
        'flipY': flipY,
        'opacity': opacity,
        'alignment': alignment,
        'clipBehavior': clipBehavior,
        'overlayDisabled': overlayDisabled,
        'overlayColor': overlayColor,
        'overlayOpacity': overlayOpacity,
        'surfaceTint': surfaceTint,
        'elevationColor': elevationColor,
        'elevation': elevation,
        'tileAlign': tileAlign,
        'tileJustify': tileJustify,
        'tileWrap': tileWrap,
        'textStyle': textStyle,
        'textAlign': textAlign,
        'textSpacing': textSpacing,
        'textColor': textColor,
        'textOverflow': textOverflow,
        'textSoftWrap': textSoftWrap,
        'textWidthBasis': textWidthBasis,
        'foregroundColor': foregroundColor,
        'foregroundOpacity': foregroundOpacity,
        'foregroundAlpha': foregroundAlpha,
        'backgroundColor': backgroundColor,
        'backgroundOpacity': backgroundOpacity,
        'backgroundAlpha': backgroundAlpha,
        'borderColor': borderColor,
        'borderOpacity': borderOpacity,
        'borderAlpha': borderAlpha,
        'borderWidth': borderWidth,
        'borderRadius': borderRadius,
        'borderStyle': borderStyle,
        'borderOffset': borderOffset,
        'image': image,
        'shadows': shadows,
        'gradient': gradient,
        'iconColor': iconColor,
        'iconOpacity': iconOpacity,
        'iconSize': iconSize,
        'titleStyle': titleStyle,
        'subtitleStyle': subtitleStyle,
        'titleSize': titleSize,
        'subtitleSize': subtitleSize,
        'titleColor': titleColor,
        'subtitleColor': subtitleColor,
        'titleMaxLines': titleMaxLines,
        'subtitleMaxLines': subtitleMaxLines,
        'titleWeight': titleWeight,
        'subtitleWeight': subtitleWeight,
      };

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is WxSheetStyle && mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => Object.hashAll(toMap().values);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    toMap().entries.forEach((el) {
      properties.add(DiagnosticsProperty(el.key, el.value, defaultValue: null));
    });
  }
}
