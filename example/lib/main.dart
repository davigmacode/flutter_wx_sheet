import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'package:wx_tile/wx_tile.dart';
import 'package:wx_text/wx_text.dart';
import 'package:theme_patrol/theme_patrol.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemePatrol(
      themes: {
        'm2': ThemeConfig(extensions: [
          WxSheetThemeM2(context),
        ]),
        'm3': ThemeConfig(extensions: [
          WxSheetThemeM3(context),
        ]),
      },
      initialTheme: 'm3',
      builder: (context, theme, child) {
        return MaterialApp(
          title: 'WxSheet Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            extensions: theme.extensions,
          ),
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              WxText.displayMedium('WxSheet'),
              SizedBox(height: 10),
              ThemePicker(),
              SizedBox(height: 40),
              Wrapper(
                title: 'Rectangle Shape',
                child: Wrap(
                  spacing: 10,
                  children: [
                    WxSheet.square(
                      size: 100,
                      variant: WxSheetVariant.text,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Center(child: Text('Text')),
                    ),
                    WxSheet.square(
                      size: 100,
                      variant: WxSheetVariant.tonal,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Center(child: Text('Tonal')),
                    ),
                    WxSheet.square(
                      size: 100,
                      variant: WxSheetVariant.elevated,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Center(child: Text('Elevated')),
                    ),
                    WxSheet.square(
                      size: 100,
                      variant: WxSheetVariant.filled,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Center(child: Text('Filled')),
                    ),
                    WxSheet.square(
                      size: 100,
                      variant: WxSheetVariant.outlined,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Center(child: Text('Outlined')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Wrapper(
                title: 'Circle Shape',
                child: Wrap(
                  spacing: 10,
                  children: [
                    WxSheet.circle(
                      radius: 50,
                      child: Center(child: Text('Text')),
                    ),
                    WxTonalSheet.circle(
                      radius: 50,
                      child: Center(child: Text('Tonal')),
                    ),
                    WxElevatedSheet.circle(
                      radius: 50,
                      child: Center(child: Text('Elevated')),
                    ),
                    WxFilledSheet.circle(
                      radius: 50,
                      child: Center(child: Text('Filled')),
                    ),
                    WxOutlinedSheet.circle(
                      radius: 50,
                      child: Center(child: Text('Outlined')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Wrapper(
                title: 'Color Severity',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      spacing: 10,
                      children: [
                        WxSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.danger,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Text'),
                              subtitle: Text('Danger'),
                            ),
                          ),
                        ),
                        WxSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.warning,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Text'),
                              subtitle: Text('Warning'),
                            ),
                          ),
                        ),
                        WxSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.success,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Text'),
                              subtitle: Text('Success'),
                            ),
                          ),
                        ),
                        WxSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.info,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Text'),
                              subtitle: Text('Info'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Wrap(
                      spacing: 10,
                      children: [
                        WxTonalSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.danger,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Tonal'),
                              subtitle: Text('Danger'),
                            ),
                          ),
                        ),
                        WxTonalSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.warning,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Tonal'),
                              subtitle: Text('Warning'),
                            ),
                          ),
                        ),
                        WxTonalSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.success,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Tonal'),
                              subtitle: Text('Success'),
                            ),
                          ),
                        ),
                        WxTonalSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.info,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Tonal'),
                              subtitle: Text('Info'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Wrap(
                      spacing: 10,
                      children: [
                        WxElevatedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.danger,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Elevated'),
                              subtitle: Text('Danger'),
                            ),
                          ),
                        ),
                        WxElevatedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.warning,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Elevated'),
                              subtitle: Text('Warning'),
                            ),
                          ),
                        ),
                        WxElevatedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.success,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Elevated'),
                              subtitle: Text('Success'),
                            ),
                          ),
                        ),
                        WxElevatedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.info,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Elevated'),
                              subtitle: Text('Info'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Wrap(
                      spacing: 10,
                      children: [
                        WxFilledSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.danger,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Filled'),
                              subtitle: Text('Danger'),
                            ),
                          ),
                        ),
                        WxFilledSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.warning,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Filled'),
                              subtitle: Text('Warning'),
                            ),
                          ),
                        ),
                        WxFilledSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.success,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Filled'),
                              subtitle: Text('Success'),
                            ),
                          ),
                        ),
                        WxFilledSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.info,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Filled'),
                              subtitle: Text('Info'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Wrap(
                      spacing: 10,
                      children: [
                        WxOutlinedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.danger,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Outlined'),
                              subtitle: Text('Danger'),
                            ),
                          ),
                        ),
                        WxOutlinedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.warning,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Outlined'),
                              subtitle: Text('Warning'),
                            ),
                          ),
                        ),
                        WxOutlinedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.success,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Outlined'),
                              subtitle: Text('Success'),
                            ),
                          ),
                        ),
                        WxOutlinedSheet.square(
                          size: 100,
                          severity: WxSheetSeverity.info,
                          child: Center(
                            child: WxTextTile(
                              align: WxTextAlign.center,
                              title: Text('Outlined'),
                              subtitle: Text('Info'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: WxText.labelLarge(title),
          ),
          Card.outlined(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class ThemePicker extends StatelessWidget {
  const ThemePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeConsumer(builder: (context, theme, child) {
      return Wrap(
        spacing: 10,
        children: [
          ChoiceChip(
            label: const Text('Material 2'),
            selected: theme.selected == 'm2',
            onSelected: (_) {
              theme.select('m2');
            },
          ),
          ChoiceChip(
            label: const Text('Material 3'),
            selected: theme.selected == 'm3',
            onSelected: (_) {
              theme.select('m3');
            },
          ),
        ],
      );
    });
  }
}
