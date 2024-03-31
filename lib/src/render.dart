import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_data.dart';
import 'package:wx_utils/wx_utils.dart';
import 'package:wx_box/wx_box.dart';
import 'package:animated_icon_theme/animated_icon_theme.dart';
import 'package:wx_tile/wx_tile.dart';

class SheetRender extends StatefulWidget {
  const SheetRender({
    super.key,
    required this.theme,
    this.style,
    this.curve,
    this.duration,
    this.tooltip,
    this.child,
  });

  final WxSheetThemeData theme;
  final WxSheetStyle? style;
  final Curve? curve;
  final Duration? duration;
  final String? tooltip;
  final Widget? child;

  @override
  State<SheetRender> createState() => _SheetRenderState();
}

class _SheetRenderState extends State<SheetRender> {
  Curve get curve => widget.curve ?? widget.theme.curve;
  Duration get duration => widget.duration ?? widget.theme.duration;

  WxSheetStyle style = const WxSheetStyle();

  @protected
  void setStyle() {
    final raw = WxSheetStyle.defaults.merge(widget.style);
    final fallback = widget.theme.resolve(
      variant: raw.variant,
      severity: raw.severity,
    );
    style = fallback.merge(raw);
  }

  Color? get defaultForegroundColor {
    return style.isFilled || style.isElevated
        ? WxColors.onSurface(backgroundColor)
        : null;
  }

  Color? get borderColor => WxColors.withTransparency(
        style.borderColor,
        opacity: style.borderOpacity,
        alpha: style.borderAlpha,
      );

  Color? get backgroundColor {
    final color = WxColors.withTransparency(
      style.backgroundColor,
      opacity: style.backgroundOpacity,
      alpha: style.backgroundAlpha,
    );

    final elevation = style.elevation;

    if (color == null || elevation == null) return color;

    if (surfaceTint != null) {
      return ElevationOverlay.applySurfaceTint(color, surfaceTint, elevation);
    }
    return ElevationOverlay.applyOverlay(context, color, elevation);
  }

  Color? get foregroundColor => WxColors.withTransparency(
        style.foregroundColor ?? defaultForegroundColor,
        opacity: style.foregroundOpacity,
        alpha: style.foregroundAlpha,
      );

  Color? get shadowColor {
    return style.shadowColor;
  }

  Color? get surfaceTint {
    return style.surfaceTint;
  }

  Color? get iconColor {
    return style.iconColor ?? foregroundColor;
  }

  TextStyle get foregroundStyle {
    return const TextStyle()
        .merge(style.foregroundStyle)
        .copyWith(color: foregroundColor);
  }

  double? get width {
    return style.shape == BoxShape.circle ? style.height : style.width;
  }

  @override
  void initState() {
    setStyle();
    super.initState();
  }

  @override
  void didUpdateWidget(SheetRender oldWidget) {
    if (mounted) {
      setStyle();
      super.didUpdateWidget(oldWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? result = WxAnimatedBox(
      curve: curve,
      duration: duration,
      color: backgroundColor,
      shadowColor: shadowColor,
      borderColor: borderColor,
      borderRadius: style.borderRadius,
      borderWidth: style.borderWidth,
      borderStyle: style.borderStyle,
      elevation: style.elevation,
      alignment: style.alignment,
      clipBehavior: style.clipBehavior,
      shape: style.shape,
      padding: style.padding,
      margin: style.margin,
      height: style.height,
      width: width,
      child: widget.child,
    );

    if (widget.tooltip != null) {
      result = Tooltip(
        message: widget.tooltip,
        child: result,
      );
    }

    result = WxAnimatedTileTheme(
      curve: curve,
      duration: duration,
      data: WxTileThemeData(
        style: WxTileStyle(
          childExpanded: style.foregroundExpanded,
          crossAxisAlignment: style.foregroundAlign,
          mainAxisAlignment: style.foregroundJustify,
          inline: width != double.infinity,
          spacing: style.foregroundSpacing,
          spacingEnforced: style.foregroundLoosen,
        ),
      ),
      child: result,
    );

    result = AnimatedIconTheme(
      curve: curve,
      duration: duration,
      data: IconThemeData(
        color: iconColor,
        size: style.iconSize,
        opacity: style.iconOpacity,
      ),
      child: result,
    );

    return Semantics(
      container: true,
      child: AnimatedDefaultTextStyle(
        curve: curve,
        duration: duration,
        style: foregroundStyle,
        child: result,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(ColorProperty('defaultForegroundColor', defaultForegroundColor));
    properties.add(ColorProperty('backgroundColor', backgroundColor));
    properties.add(ColorProperty('borderColor', borderColor));
    properties.add(ColorProperty('foregroundColor', foregroundColor));
    properties.add(ColorProperty('shadowColor', shadowColor));
    properties.add(ColorProperty('iconColor', iconColor));
    properties.add(
        DiagnosticsProperty<TextStyle>('foregroundStyle', foregroundStyle));
    properties.add(DoubleProperty('width', width));
  }
}
