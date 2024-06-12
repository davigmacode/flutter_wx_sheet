import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wx_sheet/wx_sheet.dart';

void main() {
  testWidgets('WxSheet.square() constructor', (WidgetTester tester) async {
    const widget = WxSheet.square(
      size: 100,
      child: Text('Hello, world!'),
    );

    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: widget,
      ),
    ));

    expect(find.text('Hello, world!'), findsOneWidget);
    expect(tester.getSize(find.byType(WxSheet)).width, 100);
    expect(tester.getSize(find.byType(WxSheet)).height, 100);
  });

  testWidgets('WxSheet.circle() constructor', (WidgetTester tester) async {
    const widget = WxSheet.circle(
      radius: 50,
      child: Text('Hello, world!'),
    );

    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: widget,
      ),
    ));

    expect(find.text('Hello, world!'), findsOneWidget);
    expect(tester.getSize(find.byType(WxSheet)).width, 100);
    expect(tester.getSize(find.byType(WxSheet)).height, 100);
  });

  testWidgets('WxSheet.stadium() constructor', (WidgetTester tester) async {
    const widget = WxSheet.stadium(
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
    expect(tester.getSize(find.byType(WxSheet)).width, 200);
    expect(tester.getSize(find.byType(WxSheet)).height, 100);
  });

  testWidgets('WxSheet() constructor', (WidgetTester tester) async {
    const widget = WxSheet(
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
    expect(tester.getSize(find.byType(WxSheet)).width, 200);
    expect(tester.getSize(find.byType(WxSheet)).height, 100);
  });
}
