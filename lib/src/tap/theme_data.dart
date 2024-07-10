import '../basic/main.dart';

class WxTapSheetThemeData extends WxSheetThemeData<WxTapSheetThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxTapSheetThemeData({
    super.animated,
    super.curve,
    super.duration,
    super.style,
    super.styleResolver,
  });

  WxTapSheetThemeData.from([
    super.other,
    super.fallback = const WxTapSheetThemeData(),
  ]) : super.from();

  @override
  WxTapSheetThemeData copyWith({
    animated,
    curve,
    duration,
    style,
    styleResolver,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
    );
    return WxTapSheetThemeData.from(ancestor);
  }

  @override
  WxTapSheetThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxTapSheetThemeData.from(ancestor);
  }
}
