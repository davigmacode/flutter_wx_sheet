import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'package:wx_text/wx_text.dart';
import 'package:theme_patrol/theme_patrol.dart';
import 'theme_picker.dart';
import 'sample_scaffold.dart';
import 'sample_basic.dart';
import 'sample_clickable.dart';
import 'sample_selectable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemePatrol(
      themes: {
        'm2': ThemeConfig.withMode(
          description: 'Material 2',
          light: ThemeData.light(useMaterial3: false),
          dark: ThemeData.dark(useMaterial3: false),
          extensionsBuilder: [
            (context) => WxStaticSheetThemeM2(context),
            (context) => WxTapSheetThemeM2(context),
            (context) => WxToggleSheetThemeM2(context),
          ],
        ),
        'm3': ThemeConfig.withMode(
          description: 'Material 3',
          light: ThemeData.light(useMaterial3: true),
          dark: ThemeData.dark(useMaterial3: true),
          extensionsBuilder: [
            (context) => WxStaticSheetThemeM3(context),
            (context) => WxTapSheetThemeM3(context),
            (context) => WxToggleSheetThemeM3(context),
          ],
        ),
        'ios': ThemeConfig.withMode(
          description: 'IOS',
          light: ThemeData.light(useMaterial3: false),
          dark: ThemeData.dark(useMaterial3: false),
          extensionsBuilder: [
            (context) => WxStaticSheetThemeIOS(context),
            (context) => WxTapSheetThemeIOS(context),
            (context) => WxToggleSheetThemeIOS(context),
          ],
        ),
      },
      initialTheme: 'm3',
      builder: (context, theme, child) {
        return MaterialApp(
          title: 'WxSheet Demo',
          theme: theme.lightData,
          darkTheme: theme.darkData,
          themeMode: theme.mode,
          home: const MyHomePage(),
          builder: theme.bootstrap(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _pageKey = 'basic';

  void _setPage(String val) {
    setState(() {
      _pageKey = val;
    });
  }

  Widget get _page {
    switch (_pageKey) {
      case 'clickable':
        return const KeyedSubtree(
          key: ValueKey('clickable'),
          child: SampleClickable(),
        );
      case 'selectable':
        return const KeyedSubtree(
          key: ValueKey('selectable'),
          child: SampleSelectable(),
        );
      default:
        return const KeyedSubtree(
          key: ValueKey('basic'),
          child: SampleBasic(),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SampleList(
      children: <Widget>[
        const SizedBox(height: 40),
        const WxText.displayMedium(
          'WxSheet',
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Colors.blue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          fontWeight: FontWeight.bold,
          letterSpacing: -2,
        ),
        const SizedBox(height: 10),
        const ThemePicker(),
        const SizedBox(height: 20),
        SegmentedButton(
          showSelectedIcon: false,
          style: SegmentedButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
            selectedBackgroundColor: Colors.blue.shade200,
            selectedForegroundColor: Colors.black87,
            side: BorderSide(color: Colors.blue.shade200),
            minimumSize: const Size.fromHeight(40.0),
          ),
          segments: const [
            ButtonSegment(
              value: 'basic',
              label: Text('Basic'),
            ),
            ButtonSegment(
              value: 'clickable',
              label: Text('Clickable'),
            ),
            ButtonSegment(
              value: 'selectable',
              label: Text('Selectable'),
            ),
          ],
          selected: {_pageKey},
          onSelectionChanged: (state) => _setPage(state.first),
        ),
        const SizedBox(height: 40),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: _page,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
