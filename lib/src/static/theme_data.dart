import '../basic/main.dart';

class WxStaticSheetThemeData extends WxSheetThemeData<WxStaticSheetThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxStaticSheetThemeData({
    super.animated,
    super.curve,
    super.duration,
    super.variant,
    super.size,
    super.severity,
    super.style,
    super.styleResolver,
    super.disabled,
    super.inherits,
    super.leading,
    super.trailing,
  }) : super(
          feedback: false,
          overlay: false,
          focusable: false,
          mouseCursor: null,
        );

  WxStaticSheetThemeData.from([
    super.other,
    super.fallback = const WxStaticSheetThemeData(),
  ]) : super.from();

  @override
  WxStaticSheetThemeData copyWith({
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
    return WxStaticSheetThemeData.from(ancestor);
  }

  @override
  WxStaticSheetThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxStaticSheetThemeData.from(ancestor);
  }
}
