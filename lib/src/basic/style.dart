import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:wx_utils/wx_utils.dart';
import 'types.dart';

/// The style to be applied to the sheet widget
@immutable
class WxSheetStyle with Diagnosticable {
  /// {@template widgetarian.sheet.style.variant}
  /// Type of the sheet variant
  /// {@endtemplate}
  final WxSheetVariant? variant;

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

  /// {@template widgetarian.sheet.style.align}
  /// Cross axis alignment of the foreground widget
  /// {@endtemplate}
  final CrossAxisAlignment? align;

  /// {@template widgetarian.sheet.style.justify}
  /// Main axis alignment of the foreground widget
  /// {@endtemplate}
  final MainAxisAlignment? justify;

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

  /// {@template widgetarian.sheet.style.textWrap}
  /// Controls how the child widget (title and subtitle)
  /// fills its available space (expand or wrap content).
  /// {@endtemplate}
  final bool? textWrap;

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

  /// constraints to apply to the sheet widget
  BoxConstraints? get constraints => minWidth != null ||
          minHeight != null ||
          maxWidth != null ||
          maxHeight != null
      ? BoxConstraints(
          minHeight: minHeight ?? 0,
          minWidth: minWidth ?? 0,
          maxWidth: maxWidth ?? double.infinity,
          maxHeight: maxHeight ?? double.infinity,
        )
      : null;

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
    this.variant,
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
    this.align,
    this.justify,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
    this.surfaceTint,
    this.elevationColor,
    this.elevation,
    this.textStyle,
    this.textAlign,
    this.textWrap,
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
  });

  /// Create a [WxSheetStyle] from another style
  WxSheetStyle.from(WxSheetStyle? other)
      : variant = other?.variant,
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
        align = other?.align,
        justify = other?.justify,
        alignment = other?.alignment,
        clipBehavior = other?.clipBehavior,
        overlayDisabled = other?.overlayDisabled,
        overlayColor = other?.overlayColor,
        overlayOpacity = other?.overlayOpacity,
        surfaceTint = other?.surfaceTint,
        elevationColor = other?.elevationColor,
        elevation = other?.elevation,
        textStyle = other?.textStyle,
        textAlign = other?.textAlign,
        textWrap = other?.textWrap,
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
        iconSize = other?.iconSize;

  /// Creates a copy of this [WxSheetStyle] but with
  /// [padding] is [EdgeInsets.zero] and squared size.
  WxSheetStyle icon({
    OutlinedBorder? border,
    double? size,
  }) {
    return copyWith(
      border: border ?? const CircleBorder(),
      width: size,
      height: size,
      padding: EdgeInsets.zero,
    );
  }

  /// Creates a copy of this [WxSheetStyle] but with
  /// the [width] replaced with [double.infinity].
  WxSheetStyle block({
    bool? textWrap,
    CrossAxisAlignment? align,
    MainAxisAlignment? justify,
  }) {
    return copyWith(
      width: double.infinity,
      minWidth: double.infinity,
      maxWidth: double.infinity,
      textWrap: textWrap ?? true,
      align: align,
      justify: justify,
    );
  }

  /// Creates a copy of this [WxSheetStyle] but with
  /// the given fields replaced with the new values.
  WxSheetStyle copyWith({
    WxSheetVariant? variant,
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
    CrossAxisAlignment? align,
    MainAxisAlignment? justify,
    Alignment? alignment,
    Clip? clipBehavior,
    bool? overlayDisabled,
    Color? overlayColor,
    double? overlayOpacity,
    Color? surfaceTint,
    Color? elevationColor,
    double? elevation,
    TextStyle? textStyle,
    TextAlign? textAlign,
    bool? textWrap,
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
  }) {
    return WxSheetStyle(
      variant: variant ?? this.variant,
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
      align: align ?? this.align,
      justify: justify ?? this.justify,
      alignment: alignment ?? this.alignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      overlayDisabled: overlayDisabled ?? this.overlayDisabled,
      overlayColor: overlayColor ?? this.overlayColor,
      overlayOpacity: overlayOpacity ?? this.overlayOpacity,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      elevationColor: elevationColor ?? this.elevationColor,
      elevation: elevation ?? this.elevation,
      textStyle: textStyle ?? this.textStyle,
      textAlign: textAlign ?? this.textAlign,
      textWrap: textWrap ?? this.textWrap,
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
    );
  }

  /// Creates a copy of this [WxSheetStyle] but with
  /// the given fields replaced with the new values.
  WxSheetStyle merge(WxSheetStyle? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      variant: other.variant,
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
      align: other.align,
      justify: other.justify,
      alignment: other.alignment,
      clipBehavior: other.clipBehavior,
      overlayDisabled: other.overlayDisabled,
      overlayColor: other.overlayColor,
      overlayOpacity: other.overlayOpacity,
      surfaceTint: other.surfaceTint,
      elevationColor: other.elevationColor,
      elevation: other.elevation,
      textStyle: other.textStyle,
      textAlign: other.textAlign,
      textWrap: other.textWrap,
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
    );
  }

  /// Linearly interpolate between two [WxSheetStyle] objects.
  static WxSheetStyle? lerp(WxSheetStyle? a, WxSheetStyle? b, double t) {
    if (a == null && b == null) return null;
    return WxSheetStyle(
      variant: lerpEnum(a?.variant, b?.variant, t),
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
      align: lerpEnum(a?.align, b?.align, t),
      justify: lerpEnum(a?.justify, b?.justify, t),
      alignment: lerpEnum(a?.alignment, b?.alignment, t),
      clipBehavior: lerpEnum(a?.clipBehavior, b?.clipBehavior, t),
      overlayDisabled: lerpBool(a?.overlayDisabled, b?.overlayDisabled, t),
      overlayColor: Color.lerp(a?.overlayColor, b?.overlayColor, t),
      overlayOpacity: lerpDouble(a?.overlayOpacity, b?.overlayOpacity, t),
      surfaceTint: Color.lerp(a?.surfaceTint, b?.surfaceTint, t),
      elevationColor: Color.lerp(a?.elevationColor, b?.elevationColor, t),
      elevation: lerpDouble(a?.elevation, b?.elevation, t),
      textStyle: TextStyle.lerp(a?.textStyle, b?.textStyle, t),
      textAlign: lerpEnum(a?.textAlign, b?.textAlign, t),
      textWrap: lerpBool(a?.textWrap, b?.textWrap, t),
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
    );
  }

  Map<String, dynamic> toMap() => {
        'variant': variant,
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
        'align': align,
        'justify': justify,
        'alignment': alignment,
        'clipBehavior': clipBehavior,
        'overlayDisabled': overlayDisabled,
        'overlayColor': overlayColor,
        'overlayOpacity': overlayOpacity,
        'surfaceTint': surfaceTint,
        'elevationColor': elevationColor,
        'elevation': elevation,
        'textStyle': textStyle,
        'textAlign': textAlign,
        'textWrap': textWrap,
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
