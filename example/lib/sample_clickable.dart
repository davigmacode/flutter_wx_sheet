import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'sample_scaffold.dart';
import 'severity_colors.dart';

class SampleClickable extends StatelessWidget {
  const SampleClickable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SampleItem(
          title: 'Default Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxTapSheet(
                width: 100,
                height: 100,
                variant: WxSheetVariant.text,
                alignment: Alignment.center,
                onPressed: () {},
                child: const Text('Text'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SampleItem(
          title: 'Rectangle Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxTapSheet(
                onPressed: () {},
                width: 100,
                height: 100,
                variant: WxSheetVariant.tonal,
                alignment: Alignment.center,
                child: const Text('Tonal'),
              ),
              WxTapSheet(
                onPressed: () {},
                width: 100,
                height: 100,
                variant: WxSheetVariant.elevated,
                alignment: Alignment.center,
                child: const Text('Elevated'),
              ),
              WxTapSheet(
                onPressed: () {},
                width: 100,
                height: 100,
                variant: WxSheetVariant.filled,
                alignment: Alignment.center,
                child: const Text('Filled'),
              ),
              WxTapSheet(
                onPressed: () {},
                width: 100,
                height: 100,
                variant: WxSheetVariant.outlined,
                alignment: Alignment.center,
                child: const Text('Outlined'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SampleItem(
          title: 'Circle Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxTapSheet.circle(
                onPressed: () {},
                radius: 50,
                variant: WxSheetVariant.tonal,
                alignment: Alignment.center,
                child: const Text('Tonal'),
              ),
              WxTapSheet.circle(
                onPressed: () {},
                radius: 50,
                variant: WxSheetVariant.elevated,
                alignment: Alignment.center,
                child: const Text('Elevated'),
              ),
              WxTapSheet.circle(
                onPressed: () {},
                radius: 50,
                variant: WxSheetVariant.filled,
                alignment: Alignment.center,
                child: const Text('Filled'),
              ),
              WxTapSheet.circle(
                onPressed: () {},
                radius: 50,
                variant: WxSheetVariant.outlined,
                alignment: Alignment.center,
                child: const Text('Outlined'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SampleItem(
          title: 'Stadium Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxTapSheet.stadium(
                onPressed: () {},
                width: 120,
                height: 45,
                variant: WxSheetVariant.tonal,
                alignment: Alignment.center,
                child: const Text('Tonal'),
              ),
              WxTapSheet.stadium(
                onPressed: () {},
                width: 120,
                height: 45,
                variant: WxSheetVariant.elevated,
                alignment: Alignment.center,
                child: const Text('Elevated'),
              ),
              WxTapSheet.stadium(
                onPressed: () {},
                width: 120,
                height: 45,
                variant: WxSheetVariant.filled,
                alignment: Alignment.center,
                child: const Text('Filled'),
              ),
              WxTapSheet.stadium(
                onPressed: () {},
                width: 120,
                height: 45,
                variant: WxSheetVariant.outlined,
                alignment: Alignment.center,
                child: const Text('Outlined'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SampleItem(
          title: 'Color Severity',
          child: WxTapSheetTheme.merge(
            // wrapper: (_, theme, child) {
            //   if (child == null) return null;

            //   final style = theme.style;

            //   child = WxAnimatedListTileTheme(
            //     curve: theme.curve,
            //     duration: theme.duration,
            //     data: WxListTileThemeData(
            //       style: WxListTileStyle(
            //         textColor: style.foregroundColor,
            //         textExpanded: style.foregroundExpanded,
            //         crossAxisAlignment: style.foregroundAlign,
            //         mainAxisAlignment: style.foregroundJustify,
            //         inline: style.width != double.infinity,
            //         spacing: style.foregroundSpacing,
            //         spacingEnforced: style.foregroundLoosen,
            //       ),
            //     ),
            //     child: child,
            //   );

            //   child = WxAnimatedTextTileTheme(
            //     curve: theme.curve,
            //     duration: theme.duration,
            //     data: WxTextTileThemeData(
            //       style: WxTextTileStyle(
            //         textColor: style.foregroundColor,
            //         spacing: style.foregroundSpacing,
            //       ),
            //     ),
            //     child: child,
            //   );

            //   return child;
            // },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet(
                      onPressed: () {},
                      width: 100,
                      height: 100,
                      severity: dangerColor,
                      alignment: Alignment.center,
                      child: const Text('Text\nDanger'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      width: 100,
                      height: 100,
                      severity: warningColor,
                      alignment: Alignment.center,
                      child: const Text('Text\nWarning'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      width: 100,
                      height: 100,
                      severity: successColor,
                      alignment: Alignment.center,
                      child: const Text('Text\nSuccess'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      width: 100,
                      height: 100,
                      severity: infoColor,
                      alignment: Alignment.center,
                      child: const Text('Text\nInfo'),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: dangerColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Tonal\nDanger'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: warningColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Tonal\nWarning'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: successColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Tonal\nSuccess'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: infoColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Tonal\nInfo'),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: dangerColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Elevated\nDanger'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: warningColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Elevated\nWarning'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: successColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Elevated\nSuccess'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: infoColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Elevated\nInfo'),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: dangerColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Filled\nDanger'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: warningColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Filled\nWarning'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: successColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Filled\nSuccess'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: infoColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Filled\nInfo'),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: dangerColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Outlined\nDanger'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: warningColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Outlined\nWarning'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: successColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Outlined\nSuccess'),
                    ),
                    WxTapSheet(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: infoColor,
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: const Text('Outlined\nInfo'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
