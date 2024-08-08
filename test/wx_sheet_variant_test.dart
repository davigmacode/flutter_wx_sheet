import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wx_sheet/wx_sheet.dart';

void main() {
  final variants = {
    WxSheetVariant.text,
    WxSheetVariant.tonal,
    WxSheetVariant.filled,
    WxSheetVariant.elevated,
    WxSheetVariant.outlined,
  };
  final severities = {
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
  };
  for (var variant in variants) {
    testSheet(
      variant: variant,
      themeBuilder: (context) => WxStaticSheetThemeAdaptive(context),
    );
    for (var severity in severities) {
      testSheet(
        variant: variant,
        severity: severity,
        themeBuilder: (context) => WxStaticSheetThemeAdaptive(context),
      );
    }
  }
}

typedef ThemePresetBuilder<T extends WxSheetThemeData<T>> = WxSheetThemeData<T>
    Function(BuildContext context);

void testSheet<T extends WxSheetThemeData<T>>({
  WxSheetVariant? variant,
  Color? severity,
  required ThemePresetBuilder<T> themeBuilder,
}) {
  final title = [variant?.value, severity?.value]
      .where((test) => test != null)
      .join(' and ');
  testWidgets(
    title,
    (WidgetTester tester) async {
      final sheet = WxStaticSheet(
        width: 100,
        height: 100,
        variant: variant,
        severity: severity,
        child: Text(title),
      );

      await tester.pumpWidget(Builder(builder: (context) {
        return MaterialApp(
          theme: ThemeData(
            extensions: [themeBuilder(context)],
          ),
          home: sheet,
        );
      }));

      // Find the actual sheet style
      final renderer = find.byType(WxSheetRender);
      final state = tester.state<WxSheetRenderState>(renderer);
      final actualStyle = state.effectiveStyle;

      // Capture a expected style
      final context = tester.element(find.byWidget(sheet));
      final theme = themeBuilder(context);
      final effectiveStyle = theme
          .resolve(
            variant: variant,
            severity: severity,
          )
          .merge(state.widget.style);
      final expectedStyle = state.calcEffectiveStyle(effectiveStyle);

      // Assert that the created sheets have the expected variants
      expect(sheet.variant, variant);
      expect(actualStyle.elevation, expectedStyle.elevation);
      expect(actualStyle.elevationColor, expectedStyle.elevationColor);
      expect(actualStyle.borderStyle, expectedStyle.borderStyle);
      expect(actualStyle.borderWidth, expectedStyle.borderWidth);
      expect(actualStyle.borderColor, expectedStyle.borderColor);
      expect(actualStyle.borderOpacity, expectedStyle.borderOpacity);
      expect(actualStyle.borderAlpha, expectedStyle.borderAlpha);
      expect(actualStyle.backgroundColor, expectedStyle.backgroundColor);
      expect(actualStyle.backgroundOpacity, expectedStyle.backgroundOpacity);
      expect(actualStyle.backgroundAlpha, expectedStyle.backgroundAlpha);
      expect(actualStyle.textStyle, expectedStyle.textStyle);
      expect(actualStyle.foregroundColor, expectedStyle.foregroundColor);
      expect(actualStyle.foregroundOpacity, expectedStyle.foregroundOpacity);
      expect(actualStyle.foregroundAlpha, expectedStyle.foregroundAlpha);
      expect(actualStyle.iconColor, expectedStyle.iconColor);
      expect(actualStyle.iconOpacity, expectedStyle.iconOpacity);
      expect(actualStyle.overlayColor, expectedStyle.overlayColor);
      expect(actualStyle.overlayOpacity, expectedStyle.overlayOpacity);
    },
  );
}
