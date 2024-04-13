import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_icon_theme/animated_icon_theme.dart';
import 'package:wx_utils/wx_utils.dart';
import 'package:wx_box/wx_box.dart';
import 'style.dart';
import 'theme_data.dart';
import 'wrapper.dart';

class WxSheetRender extends StatefulWidget {
  const WxSheetRender({
    super.key,
    required this.theme,
    this.style,
    this.curve,
    this.duration,
    this.animated,
    this.tooltip,
    this.wrapper,
    this.selected = false,
    this.disabled = false,
    this.child,
  });

  final WxSheetThemeData theme;
  final WxSheetStyle? style;
  final bool? animated;
  final Curve? curve;
  final Duration? duration;
  final String? tooltip;
  final WxSheetBuilder? wrapper;
  final bool selected;
  final bool disabled;
  final Widget? child;

  @override
  State<WxSheetRender> createState() => _WxSheetRenderState();
}

class _WxSheetRenderState extends State<WxSheetRender> {
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
        ? widget.selected && widget.disabled
            ? backgroundColor
            : WxColors.onSurface(backgroundColor)
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
  void didChangeDependencies() {
    setEffectiveStyle();
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(WxSheetRender oldWidget) {
    if (mounted) {
      setEffectiveStyle();
      super.didUpdateWidget(oldWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    final wrapper = widget.wrapper ?? widget.theme.wrapper;
    final wrappedChild = wrapper.call(
      context,
      widget.theme.copyWith(
        animated: animated,
        duration: duration,
        curve: curve,
        style: effectiveStyle,
      ),
      widget.child,
    );

    Widget result = animated
        ? WxAnimatedBox(
            curve: curve,
            duration: duration,
            color: effectiveStyle.backgroundColor,
            elevationColor: effectiveStyle.elevationColor,
            borderColor: effectiveStyle.borderColor,
            borderRadius: effectiveStyle.borderRadius,
            borderWidth: effectiveStyle.borderWidth,
            borderStyle: effectiveStyle.borderStyle,
            borderOffset: effectiveStyle.borderOffset,
            border: effectiveStyle.border,
            image: effectiveStyle.image,
            shadows: effectiveStyle.shadows,
            gradient: effectiveStyle.gradient,
            elevation: effectiveStyle.elevation,
            alignment: effectiveStyle.alignment,
            clipBehavior: effectiveStyle.clipBehavior,
            padding: effectiveStyle.padding,
            margin: effectiveStyle.margin,
            constraints: effectiveStyle.constraints,
            height: effectiveStyle.height,
            width: effectiveStyle.width,
            child: wrappedChild,
          )
        : WxBox(
            color: effectiveStyle.backgroundColor,
            elevationColor: effectiveStyle.elevationColor,
            borderColor: effectiveStyle.borderColor,
            borderRadius: effectiveStyle.borderRadius,
            borderWidth: effectiveStyle.borderWidth,
            borderStyle: effectiveStyle.borderStyle,
            borderOffset: effectiveStyle.borderOffset,
            border: effectiveStyle.border,
            image: effectiveStyle.image,
            shadows: effectiveStyle.shadows,
            gradient: effectiveStyle.gradient,
            elevation: effectiveStyle.elevation,
            alignment: effectiveStyle.alignment,
            clipBehavior: effectiveStyle.clipBehavior,
            padding: effectiveStyle.padding,
            margin: effectiveStyle.margin,
            constraints: effectiveStyle.constraints,
            height: effectiveStyle.height,
            width: effectiveStyle.width,
            child: wrappedChild,
          );

    if (widget.tooltip != null) {
      result = Tooltip(
        message: widget.tooltip,
        child: result,
      );
    }

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
        : DefaultTextStyle.merge(
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
