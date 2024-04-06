import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_icon_theme/animated_icon_theme.dart';
import 'package:wx_utils/wx_utils.dart';
import 'package:wx_box/wx_box.dart';
import 'style.dart';
import 'theme_data.dart';
import 'wrapper.dart';

class SheetRender extends StatefulWidget {
  const SheetRender({
    super.key,
    required this.theme,
    this.style,
    this.curve,
    this.duration,
    this.animated,
    this.tooltip,
    this.wrapper,
    this.child,
  });

  final WxSheetThemeData theme;
  final WxSheetStyle? style;
  final bool? animated;
  final Curve? curve;
  final Duration? duration;
  final String? tooltip;
  final WxSheetBuilder? wrapper;
  final Widget? child;

  @override
  State<SheetRender> createState() => _SheetRenderState();
}

class _SheetRenderState extends State<SheetRender> {
  bool get animated => widget.animated ?? widget.theme.animated;
  Curve get curve => widget.curve ?? widget.theme.curve;
  Duration get duration => widget.duration ?? widget.theme.duration;

  WxSheetStyle effectiveStyle = const WxSheetStyle();

  @protected
  void setEffectiveStyle() {
    final raw = WxSheetStyle.defaults.merge(widget.style);
    final fallback = widget.theme.resolve(
      variant: raw.variant,
      severity: raw.severity,
    );
    final style = fallback.merge(raw);

    final backgroundColor = _getBackgroundColor(style);

    final borderColor = WxColors.withTransparency(
      style.borderColor,
      opacity: style.borderOpacity,
      alpha: style.borderAlpha,
    );

    final defaultForegroundColor = style.isFilled || style.isElevated
        ? WxColors.onSurface(backgroundColor)
        : null;

    final foregroundColor = WxColors.withTransparency(
      style.foregroundColor ?? defaultForegroundColor,
      opacity: style.foregroundOpacity,
      alpha: style.foregroundAlpha,
    );

    final foregroundStyle = const TextStyle()
        .merge(style.foregroundStyle)
        .copyWith(color: foregroundColor);

    final iconColor = style.iconColor ?? foregroundColor;

    effectiveStyle = style.copyWith(
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      foregroundColor: foregroundColor,
      foregroundStyle: foregroundStyle,
      iconColor: iconColor,
    );
  }

  Color? _getBackgroundColor(WxSheetStyle style) {
    final color = WxColors.withTransparency(
      style.backgroundColor,
      opacity: style.backgroundOpacity,
      alpha: style.backgroundAlpha,
    );

    final elevation = style.elevation;

    if (color == null || elevation == null) return color;

    if (style.surfaceTint != null) {
      return ElevationOverlay.applySurfaceTint(
        color,
        style.surfaceTint,
        elevation,
      );
    }
    return ElevationOverlay.applyOverlay(context, color, elevation);
  }

  @override
  void initState() {
    setEffectiveStyle();
    super.initState();
  }

  @override
  void didUpdateWidget(SheetRender oldWidget) {
    if (mounted) {
      setEffectiveStyle();
      super.didUpdateWidget(oldWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = animated
        ? WxAnimatedBox(
            curve: curve,
            duration: duration,
            color: effectiveStyle.backgroundColor,
            shadowColor: effectiveStyle.shadowColor,
            borderColor: effectiveStyle.borderColor,
            borderRadius: effectiveStyle.borderRadius,
            borderWidth: effectiveStyle.borderWidth,
            borderStyle: effectiveStyle.borderStyle,
            elevation: effectiveStyle.elevation,
            alignment: effectiveStyle.alignment,
            clipBehavior: effectiveStyle.clipBehavior,
            shape: WxBoxShape.values[effectiveStyle.shape?.index ?? 0],
            padding: effectiveStyle.padding,
            margin: effectiveStyle.margin,
            height: effectiveStyle.height,
            width: effectiveStyle.width,
            child: widget.child,
          )
        : WxBox(
            color: effectiveStyle.backgroundColor,
            shadowColor: effectiveStyle.shadowColor,
            borderColor: effectiveStyle.borderColor,
            borderRadius: effectiveStyle.borderRadius,
            borderWidth: effectiveStyle.borderWidth,
            borderStyle: effectiveStyle.borderStyle,
            elevation: effectiveStyle.elevation,
            alignment: effectiveStyle.alignment,
            clipBehavior: effectiveStyle.clipBehavior,
            shape: WxBoxShape.values[effectiveStyle.shape?.index ?? 0],
            padding: effectiveStyle.padding,
            margin: effectiveStyle.margin,
            height: effectiveStyle.height,
            width: effectiveStyle.width,
            child: widget.child,
          );

    if (widget.tooltip != null) {
      result = Tooltip(
        message: widget.tooltip,
        child: result,
      );
    }

    final wrapper = widget.wrapper ?? widget.theme.wrapper;
    result = wrapper.call(
      context,
      widget.theme.copyWith(style: effectiveStyle),
      result,
    );

    result = animated
        ? AnimatedIconTheme(
            curve: curve,
            duration: duration,
            data: IconThemeData(
              color: effectiveStyle.iconColor,
              size: effectiveStyle.iconSize,
              opacity: effectiveStyle.iconOpacity,
            ),
            child: result,
          )
        : IconTheme.merge(
            data: IconThemeData(
              color: effectiveStyle.iconColor,
              size: effectiveStyle.iconSize,
              opacity: effectiveStyle.iconOpacity,
            ),
            child: result,
          );

    result = animated
        ? AnimatedDefaultTextStyle(
            curve: curve,
            duration: duration,
            style: effectiveStyle.foregroundStyle!,
            child: result,
          )
        : DefaultTextStyle(
            style: effectiveStyle.foregroundStyle!,
            child: result,
          );

    return Semantics(
      container: true,
      child: result,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    effectiveStyle.debugFillProperties(properties);
  }
}
