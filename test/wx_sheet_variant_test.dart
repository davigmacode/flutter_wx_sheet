import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wx_sheet/wx_sheet.dart';

void main() {
  for (var variant in WxSheetVariant.values) {
    testSheet(
      variant: variant,
      presetBuilder: (context) => WxSheetThemeM2(context),
    );
    for (var severity in WxSheetSeverity.values) {
      testSheet(
        variant: variant,
        severity: severity,
        presetBuilder: (context) => WxSheetThemeM2(context),
      );
    }
  }
}

typedef ThemePresetBuilder = WxSheetThemeData? Function(BuildContext context);

void testSheet({
  WxSheetVariant? variant,
  WxSheetSeverity? severity,
  ThemePresetBuilder? presetBuilder,
}) {
  final title = [variant, severity].where((test) => test != null).join(' and ');
  testWidgets(
    title,
    (WidgetTester tester) async {
      final sheet = WxSheet(
        variant: variant,
        severity: severity,
        child: Text('This is a $title sheet'),
      );

      await tester.pumpWidget(Builder(builder: (context) {
        return MaterialApp(
          theme: ThemeData(
            extensions: [
              presetBuilder?.call(context),
            ].whereType(),
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
      const defaultTheme = WxSheetThemeBase();
      final presetTheme = presetBuilder?.call(context);
      final presetStyle =
          presetTheme?.style.merge(presetTheme.variantStyle[variant]);
      final variantStyle = defaultTheme.variantStyle[variant];
      final severityStyle = presetTheme?.severityStyle[severity]?[variant];
      final mergedStyle = const WxSheetStyle()
          .merge(presetStyle)
          .merge(variantStyle)
          .merge(severityStyle)
          .copyWith(variant: variant, severity: severity);
      final expectedStyle = state.calcEffectiveStyle(mergedStyle);

      // Assert that the created sheets have the expected variants
      expect(sheet.variant, variant);
      expect(actualStyle.elevation, expectedStyle?.elevation);
      expect(actualStyle.elevationColor, expectedStyle?.elevationColor);
      expect(actualStyle.borderStyle, expectedStyle?.borderStyle);
      expect(actualStyle.borderWidth, expectedStyle?.borderWidth);
      expect(actualStyle.borderColor, expectedStyle?.borderColor);
      expect(actualStyle.borderOpacity, expectedStyle?.borderOpacity);
      expect(actualStyle.borderAlpha, expectedStyle?.borderAlpha);
      expect(actualStyle.backgroundColor, expectedStyle?.backgroundColor);
      expect(actualStyle.backgroundOpacity, expectedStyle?.backgroundOpacity);
      expect(actualStyle.backgroundAlpha, expectedStyle?.backgroundAlpha);
      expect(actualStyle.foregroundStyle, expectedStyle?.foregroundStyle);
      expect(actualStyle.foregroundColor, expectedStyle?.foregroundColor);
      expect(actualStyle.foregroundOpacity, expectedStyle?.foregroundOpacity);
      expect(actualStyle.foregroundAlpha, expectedStyle?.foregroundAlpha);
      expect(actualStyle.iconColor, expectedStyle?.iconColor);
      expect(actualStyle.iconOpacity, expectedStyle?.iconOpacity);
      expect(actualStyle.overlayDisabled, expectedStyle?.overlayDisabled);
      expect(actualStyle.overlayColor, expectedStyle?.overlayColor);
      expect(actualStyle.overlayOpacity, expectedStyle?.overlayOpacity);
    },
  );
}
