import '../basic/main.dart';

class WxStaticSheetThemeData extends WxSheetThemeData<WxStaticSheetThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxStaticSheetThemeData({
    super.animated,
    super.curve,
    super.duration,
    super.wrapper,
    super.style,
    super.styleResolver,
  });

  WxStaticSheetThemeData.from([
    super.other,
    super.fallback = const WxStaticSheetThemeData(),
  ]) : super.from();

  @override
  WxStaticSheetThemeData copyWith({
    animated,
    curve,
    duration,
    wrapper,
    style,
    styleResolver,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      wrapper: wrapper,
      style: style,
      styleResolver: styleResolver,
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
