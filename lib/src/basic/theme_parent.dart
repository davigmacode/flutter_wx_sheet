import '../basic/main.dart';

class WxSheetThemeParent extends WxSheetThemeData<WxSheetThemeParent> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxSheetThemeParent({
    super.animated,
    super.curve,
    super.duration,
    super.variant,
    super.size,
    super.severity,
    super.style,
    super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
    super.leading,
    super.trailing,
  });

  WxSheetThemeParent.from([
    super.other,
    super.fallback = const WxSheetThemeParent(),
  ]) : super.from();

  @override
  WxSheetThemeParent copyWith({
    animated,
    curve,
    duration,
    variant,
    size,
    severity,
    style,
    styleResolver,
    overlay,
    feedback,
    focusable,
    disabled,
    inherits,
    mouseCursor,
    leading,
    trailing,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      variant: variant,
      size: size,
      severity: severity,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      inherits: inherits,
      mouseCursor: mouseCursor,
      leading: leading,
      trailing: trailing,
    );
    return WxSheetThemeParent.from(ancestor);
  }

  @override
  WxSheetThemeParent merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxSheetThemeParent.from(ancestor);
  }
}
