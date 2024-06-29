import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wx_sheet/wx_sheet.dart';

void main() {
  testWidgets('WxStaticSheet.square() constructor',
      (WidgetTester tester) async {
    const widget = WxStaticSheet.square(
      size: 100,
      child: Text('Hello, world!'),
    );

    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: widget,
      ),
    ));

    expect(find.text('Hello, world!'), findsOneWidget);
    expect(tester.getSize(find.byType(WxStaticSheet)).width, 100);
    expect(tester.getSize(find.byType(WxStaticSheet)).height, 100);
  });

  testWidgets('WxStaticSheet.circle() constructor',
      (WidgetTester tester) async {
    const widget = WxStaticSheet.circle(
      radius: 50,
      child: Text('Hello, world!'),
    );

    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: widget,
      ),
    ));

    expect(find.text('Hello, world!'), findsOneWidget);
    expect(tester.getSize(find.byType(WxStaticSheet)).width, 100);
    expect(tester.getSize(find.byType(WxStaticSheet)).height, 100);
  });

  testWidgets('WxStaticSheet.stadium() constructor',
      (WidgetTester tester) async {
    const widget = WxStaticSheet.stadium(
      width: 200,
      height: 100,
      child: Text('Hello, world!'),
    );

    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: widget,
      ),
    ));

    expect(find.text('Hello, world!'), findsOneWidget);
    expect(tester.getSize(find.byType(WxStaticSheet)).width, 200);
    expect(tester.getSize(find.byType(WxStaticSheet)).height, 100);
  });

  testWidgets('WxStaticSheet() constructor', (WidgetTester tester) async {
    const widget = WxStaticSheet(
      width: 200,
      height: 100,
      child: Text('Hello, world!'),
    );

    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: widget,
      ),
    ));

    expect(find.text('Hello, world!'), findsOneWidget);
    expect(tester.getSize(find.byType(WxStaticSheet)).width, 200);
    expect(tester.getSize(find.byType(WxStaticSheet)).height, 100);
  });
}
