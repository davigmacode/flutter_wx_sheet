import '../basic/main.dart';

class WxStaticSheetThemeData extends WxSheetThemeData<WxStaticSheetThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxStaticSheetThemeData({
    super.animated,
    super.curve,
    super.duration,
    super.style,
    super.styleResolver,
    super.disabled,
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
    style,
    styleResolver,
    overlay,
    feedback,
    focusable,
    disabled,
    mouseCursor,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      mouseCursor: mouseCursor,
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
