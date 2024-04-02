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

    final width = style.shape == BoxShape.circle ? style.height : style.width;

    effectiveStyle = style.copyWith(
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      foregroundColor: foregroundColor,
      foregroundStyle: foregroundStyle,
      iconColor: iconColor,
      width: width,
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
    Widget? result = WxAnimatedBox(
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
      shape: effectiveStyle.shape,
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

    result = WxAnimatedListTileTheme(
      curve: curve,
      duration: duration,
      data: WxListTileThemeData(
        style: WxListTileStyle(
          textColor: effectiveStyle.foregroundColor,
          textExpanded: effectiveStyle.foregroundExpanded,
          crossAxisAlignment: effectiveStyle.foregroundAlign,
          mainAxisAlignment: effectiveStyle.foregroundJustify,
          inline: effectiveStyle.width != double.infinity,
          spacing: effectiveStyle.foregroundSpacing,
          spacingEnforced: effectiveStyle.foregroundLoosen,
        ),
      ),
      child: result,
    );

    result = WxAnimatedTextTileTheme(
      curve: curve,
      duration: duration,
      data: WxTextTileThemeData(
        style: WxTextTileStyle(
          textColor: effectiveStyle.foregroundColor,
          spacing: effectiveStyle.foregroundSpacing,
        ),
      ),
      child: result,
    );

    result = AnimatedIconTheme(
      curve: curve,
      duration: duration,
      data: IconThemeData(
        color: effectiveStyle.iconColor,
        size: effectiveStyle.iconSize,
        opacity: effectiveStyle.iconOpacity,
      ),
      child: result,
    );

    return Semantics(
      container: true,
      child: AnimatedDefaultTextStyle(
        curve: curve,
        duration: duration,
        style: effectiveStyle.foregroundStyle!,
        child: result,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    effectiveStyle.debugFillProperties(properties);
  }
}
