import '../basic/main.dart';

class WxToggleSheetThemeData extends WxSheetThemeData<WxToggleSheetThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxToggleSheetThemeData({
    super.animated,
    super.curve,
    super.duration,
    super.style,
    super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.mouseCursor,
  });

  WxToggleSheetThemeData.from([
    super.other,
    super.fallback = const WxToggleSheetThemeData(),
  ]) : super.from();

  @override
  WxToggleSheetThemeData copyWith({
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
    return WxToggleSheetThemeData.from(ancestor);
  }

  @override
  WxToggleSheetThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxToggleSheetThemeData.from(ancestor);
  }
}
