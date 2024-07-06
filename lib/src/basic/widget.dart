import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';
import 'style_driven.dart';
import 'types.dart';
import 'theme.dart';
import 'theme_data.dart';
import 'render.dart';

/// The sheet widget serves as the building block for many Widgetarian components,
/// providing a base layer for customization.
class WxSheet<T extends WxSheetThemeData<T>> extends StatelessWidget {
  /// Create a sheet widget
  const WxSheet({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
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
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
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
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  });

  /// Create a sheet widget with square size
  const WxSheet.square({
    super.key,
    double? size,
    double? minSize,
    double? maxSize,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
    this.variant,
    this.severity,
    this.margin,
    this.padding,
    this.spacing,
    this.adaptiveSpacing,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
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
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  })  : width = size,
        height = size,
        minWidth = minSize,
        maxWidth = maxSize,
        minHeight = minSize,
        maxHeight = maxSize;

  /// Create sheet widget with circle shape
  const WxSheet.circle({
    super.key,
    double? radius,
    double? minRadius,
    double? maxRadius,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
    this.variant,
    this.severity,
    this.margin,
    this.padding,
    this.spacing,
    this.adaptiveSpacing,
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
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
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  })  : border = const CircleBorder(),
        width = radius != null ? radius * 2 : null,
        height = radius != null ? radius * 2 : null,
        minWidth = minRadius != null ? minRadius * 2 : null,
        maxWidth = maxRadius != null ? maxRadius * 2 : null,
        minHeight = minRadius != null ? minRadius * 2 : null,
        maxHeight = maxRadius != null ? maxRadius * 2 : null;

  /// Create a sheet widget with stadium shape
  const WxSheet.stadium({
    super.key,
    this.animated,
    this.duration,
    this.curve,
    this.direction,
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
    this.alignment,
    this.clipBehavior,
    this.overlayDisabled,
    this.overlayColor,
    this.overlayOpacity,
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
    this.borderStyle,
    this.borderOffset,
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
    this.image,
    this.shadows,
    this.gradient,
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.loading = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.onSelected,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.style,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.child,
  })  : border = const StadiumBorder(),
        borderRadius = null;

  /// Whether to animate the sheet decoration.
  final bool? animated;

  /// The curve to apply when animating the parameters of this widget.
  final Curve? curve;

  /// The duration over which to animate the parameters of this widget.
  final Duration? duration;

  /// {@macro widgetarian.sheet.style.direction}
  final Axis? direction;

  /// {@macro widgetarian.sheet.style.variant}
  final WxSheetVariant? variant;

  /// {@macro widgetarian.sheet.style.severity}
  final Color? severity;

  /// {@macro widgetarian.sheet.style.width}
  final double? width;

  /// {@macro widgetarian.sheet.style.height}
  final double? height;

  /// {@macro widgetarian.sheet.style.minWidth}
  final double? minWidth;

  /// {@macro widgetarian.sheet.style.maxWidth}
  final double? maxWidth;

  /// {@macro widgetarian.sheet.style.minHeight}
  final double? minHeight;

  /// {@macro widgetarian.sheet.style.maxHeight}
  final double? maxHeight;

  /// {@macro widgetarian.sheet.style.margin}
  final EdgeInsetsGeometry? margin;

  /// {@macro widgetarian.sheet.style.padding}
  final EdgeInsetsGeometry? padding;

  /// {@macro widgetarian.sheet.style.spacing}
  final double? spacing;

  /// {@macro widgetarian.sheet.style.adaptiveSpacing}
  final bool? adaptiveSpacing;

  /// {@macro widgetarian.sheet.style.alignment}
  final Alignment? alignment;

  /// {@macro widgetarian.sheet.style.clipBehavior}
  final Clip? clipBehavior;

  /// {@macro widgetarian.sheet.style.overlayDisabled}
  final bool? overlayDisabled;

  /// {@macro widgetarian.sheet.style.overlayColor}
  final Color? overlayColor;

  /// {@macro widgetarian.sheet.style.overlayOpacity}
  final double? overlayOpacity;

  /// {@macro widgetarian.sheet.style.elevationColor}
  final Color? elevationColor;

  /// {@macro widgetarian.sheet.style.elevation}
  final double? elevation;

  /// {@macro widgetarian.sheet.style.tileAlign}
  final CrossAxisAlignment? tileAlign;

  /// {@macro widgetarian.sheet.style.tileJustify}
  final MainAxisAlignment? tileJustify;

  /// {@macro widgetarian.sheet.style.tileWrap}
  final bool? tileWrap;

  /// {@macro widgetarian.sheet.style.textStyle}
  final TextStyle? textStyle;

  /// {@macro widgetarian.sheet.style.textAlign}
  final TextAlign? textAlign;

  /// {@macro widgetarian.sheet.style.textSpacing}
  final double? textSpacing;

  /// {@macro widgetarian.sheet.style.textColor}
  final Color? textColor;

  /// {@macro widgetarian.sheet.style.textOverflow}
  final TextOverflow? textOverflow;

  /// {@macro widgetarian.sheet.style.textSoftWrap}
  final bool? textSoftWrap;

  /// {@macro widgetarian.sheet.style.textWidthBasis}
  final TextWidthBasis? textWidthBasis;

  /// {@macro widgetarian.sheet.style.foregroundColor}
  final Color? foregroundColor;

  /// {@macro widgetarian.sheet.style.foregroundOpacity}
  final double? foregroundOpacity;

  /// {@macro widgetarian.sheet.style.foregroundAlpha}
  final int? foregroundAlpha;

  /// {@macro widgetarian.sheet.style.backgroundColor}
  final Color? backgroundColor;

  /// {@macro widgetarian.sheet.style.backgroundOpacity}
  final double? backgroundOpacity;

  /// {@macro widgetarian.sheet.style.backgroundAlpha}
  final int? backgroundAlpha;

  /// {@macro widgetarian.sheet.style.borderColor}
  final Color? borderColor;

  /// {@macro widgetarian.sheet.style.borderOpacity}
  final double? borderOpacity;

  /// {@macro widgetarian.sheet.style.borderAlpha}
  final int? borderAlpha;

  /// {@macro widgetarian.sheet.style.borderWidth}
  final double? borderWidth;

  /// {@macro widgetarian.sheet.style.borderRadius}
  final BorderRadius? borderRadius;

  /// {@macro widgetarian.sheet.style.borderStyle}
  final BorderStyle? borderStyle;

  /// {@macro widgetarian.sheet.style.borderOffset}
  final double? borderOffset;

  /// {@macro widgetarian.sheet.style.border}
  final OutlinedBorder? border;

  /// {@macro widgetarian.sheet.style.image}
  final DecorationImage? image;

  /// {@macro widgetarian.sheet.style.shadows}
  final List<BoxShadow>? shadows;

  /// {@macro widgetarian.sheet.style.gradient}
  final Gradient? gradient;

  /// {@macro widgetarian.sheet.style.iconColor}
  final Color? iconColor;

  /// {@macro widgetarian.sheet.style.iconOpacity}
  final double? iconOpacity;

  /// {@macro widgetarian.sheet.style.iconSize}
  final double? iconSize;

  /// {@macro widgetarian.sheet.style.titleStyle}
  final TextStyle? titleStyle;

  /// {@macro widgetarian.sheet.style.subtitleStyle}
  final TextStyle? subtitleStyle;

  /// {@macro widgetarian.sheet.style.titleSize}
  final double? titleSize;

  /// {@macro widgetarian.sheet.style.subtitleSize}
  final double? subtitleSize;

  /// {@macro widgetarian.sheet.style.titleColor}
  final Color? titleColor;

  /// {@macro widgetarian.sheet.style.subtitleColor}
  final Color? subtitleColor;

  /// {@macro widgetarian.sheet.style.titleMaxLines}
  final int? titleMaxLines;

  /// {@macro widgetarian.sheet.style.subtitleMaxLines}
  final int? subtitleMaxLines;

  /// {@macro widgetarian.sheet.style.titleWeight}
  final FontWeight? titleWeight;

  /// {@macro widgetarian.sheet.style.subtitleWeight}
  final FontWeight? subtitleWeight;

  /// Tooltip string to be used for the body area of the button.
  final String? tooltip;

  /// Called to build an extra wrapper.
  final WxSheetBuilder<T>? wrapper;

  /// Whether or not this sheet widget is in selected state.
  final bool selected;

  /// Whether or not this sheet widget is in disabled state.
  final bool disabled;

  /// {@macro widgetarian.button.loading}
  final bool loading;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro widgetarian.button.onPressed}
  final VoidCallback? onPressed;

  /// {@macro widgetarian.button.onSelected}
  final ValueChanged<bool>? onSelected;

  /// The style to be applied when events includes [WxSheetEvent.selected].
  final WxSheetStyle? selectedStyle;

  /// The style to be applied when events includes [WxSheetEvent.focused].
  final WxSheetStyle? focusedStyle;

  /// The style to be applied when events includes [WxSheetEvent.hovered].
  final WxSheetStyle? hoveredStyle;

  /// The style to be applied when events includes [WxSheetEvent.pressed].
  final WxSheetStyle? pressedStyle;

  /// The style to be applied when events includes [WxSheetEvent.loading].
  final WxSheetStyle? loadingStyle;

  /// The style to be applied when events includes [WidgetEvent.disabled].
  final WxSheetStyle? disabledStyle;

  /// The style to be applied to the sheet.
  final WxSheetStyle? style;

  /// A custom widget to display prior to the [child] widget.
  final Widget? leading;

  /// A custom widget to display next to the [child] widget.
  final Widget? trailing;

  /// The primary text content
  final Widget? title;

  /// Additional content displayed below the title.
  final Widget? subtitle;

  /// The widget below this widget in the tree.
  final Widget? child;

  /// Sheet style that merge [style] with all shortcut properties
  WxSheetStyle get effectiveStyle {
    return WxDrivenSheetStyle.fromAncestor(style).copyWith(
      direction: direction,
      variant: variant,
      severity: severity,
      width: width,
      height: height,
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
      margin: margin,
      padding: padding,
      spacing: spacing,
      adaptiveSpacing: adaptiveSpacing,
      alignment: alignment,
      clipBehavior: clipBehavior,
      overlayDisabled: overlayDisabled,
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      elevationColor: elevationColor,
      elevation: elevation,
      tileAlign: tileAlign,
      tileJustify: tileJustify,
      tileWrap: tileWrap,
      textStyle: textStyle,
      textAlign: textAlign,
      textSpacing: textSpacing,
      textColor: textColor,
      textOverflow: textOverflow,
      textSoftWrap: textSoftWrap,
      textWidthBasis: textWidthBasis,
      foregroundColor: foregroundColor,
      foregroundOpacity: foregroundOpacity,
      foregroundAlpha: foregroundAlpha,
      backgroundColor: backgroundColor,
      backgroundOpacity: backgroundOpacity,
      backgroundAlpha: backgroundAlpha,
      borderColor: borderColor,
      borderOpacity: borderOpacity,
      borderAlpha: borderAlpha,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderStyle: borderStyle,
      borderOffset: borderOffset,
      border: border,
      image: image,
      shadows: shadows,
      gradient: gradient,
      iconColor: iconColor,
      iconOpacity: iconOpacity,
      iconSize: iconSize,
      titleStyle: titleStyle,
      subtitleStyle: subtitleStyle,
      titleSize: titleSize,
      subtitleSize: subtitleSize,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      titleWeight: titleWeight,
      subtitleWeight: subtitleWeight,
      selectedStyle: selectedStyle,
      focusedStyle: focusedStyle,
      hoveredStyle: hoveredStyle,
      pressedStyle: pressedStyle,
      disabledStyle: disabledStyle,
    );
  }

  WxSheetThemeData<T> getThemeData(BuildContext context) {
    return WxSheetTheme.of<T>(context);
  }

  @override
  Widget build(BuildContext context) {
    return WxSheetRender<T>(
      animated: animated,
      disabled: disabled,
      selected: selected,
      loading: loading,
      autofocus: autofocus,
      focusNode: focusNode,
      curve: curve,
      duration: duration,
      style: effectiveStyle,
      theme: getThemeData(context),
      tooltip: tooltip,
      wrapper: wrapper,
      onPressed: onPressed,
      onSelected: onSelected,
      leading: leading,
      trailing: trailing,
      title: title,
      subtitle: subtitle,
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('animated', animated));
    properties.add(DiagnosticsProperty('disabled', disabled));
    properties.add(DiagnosticsProperty('selected', selected));
    properties.add(DiagnosticsProperty('loading', loading));
    properties.add(DiagnosticsProperty('autofocus', autofocus));
    properties.add(DiagnosticsProperty('curve', curve));
    properties.add(DiagnosticsProperty('duration', duration));
    properties.add(DiagnosticsProperty('tooltip', tooltip));
    properties.add(DiagnosticsProperty('wrapper', wrapper));
    properties.add(DiagnosticsProperty('style', style));
    properties.add(DiagnosticsProperty('effectiveStyle', effectiveStyle));
  }
}
