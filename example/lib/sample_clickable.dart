import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'sample_scaffold.dart';

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
              WxTapSheet.square(
                size: 100,
                variant: WxSheetVariant.text,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                onPressed: () {},
                child: const Center(child: Text('Text')),
              ),
            ],
          ),
        ),
        SampleItem(
          title: 'Rectangle Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxTapSheet.square(
                onPressed: () {},
                size: 100,
                variant: WxSheetVariant.tonal,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: const Center(child: Text('Tonal')),
              ),
              WxTapSheet.square(
                onPressed: () {},
                size: 100,
                variant: WxSheetVariant.elevated,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: const Center(child: Text('Elevated')),
              ),
              WxTapSheet.square(
                onPressed: () {},
                size: 100,
                variant: WxSheetVariant.filled,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: const Center(child: Text('Filled')),
              ),
              WxTapSheet.square(
                onPressed: () {},
                size: 100,
                variant: WxSheetVariant.outlined,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: const Center(child: Text('Outlined')),
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
                child: const Center(child: Text('Tonal')),
              ),
              WxTapSheet.circle(
                onPressed: () {},
                radius: 50,
                variant: WxSheetVariant.elevated,
                child: const Center(child: Text('Elevated')),
              ),
              WxTapSheet.circle(
                onPressed: () {},
                radius: 50,
                variant: WxSheetVariant.filled,
                child: const Center(child: Text('Filled')),
              ),
              WxTapSheet.circle(
                onPressed: () {},
                radius: 50,
                variant: WxSheetVariant.outlined,
                child: const Center(child: Text('Outlined')),
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
                child: const Center(child: Text('Tonal')),
              ),
              WxTapSheet.stadium(
                onPressed: () {},
                width: 120,
                height: 45,
                variant: WxSheetVariant.elevated,
                child: const Center(child: Text('Elevated')),
              ),
              WxTapSheet.stadium(
                onPressed: () {},
                width: 120,
                height: 45,
                variant: WxSheetVariant.filled,
                child: const Center(child: Text('Filled')),
              ),
              WxTapSheet.stadium(
                onPressed: () {},
                width: 120,
                height: 45,
                variant: WxSheetVariant.outlined,
                child: const Center(child: Text('Outlined')),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SampleItem(
          title: 'Color Severity',
          child: WxSheetTheme.merge(
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
                    WxTapSheet.square(
                      onPressed: () {},
                      size: 100,
                      severity: WxSheetSeverity.danger,
                      child: const Center(
                        child: Text('Text\nDanger'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      size: 100,
                      severity: WxSheetSeverity.warning,
                      child: const Center(
                        child: Text('Text\nWarning'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      size: 100,
                      severity: WxSheetSeverity.success,
                      child: const Center(
                        child: Text('Text\nSuccess'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      size: 100,
                      severity: WxSheetSeverity.info,
                      child: const Center(
                        child: Text('Text\nInfo'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: WxSheetSeverity.danger,
                      size: 100,
                      child: const Center(
                        child: Text('Tonal\nDanger'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: WxSheetSeverity.warning,
                      size: 100,
                      child: const Center(
                        child: Text('Tonal\nWarning'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: WxSheetSeverity.success,
                      size: 100,
                      child: const Center(
                        child: Text('Tonal\nSuccess'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.tonal,
                      severity: WxSheetSeverity.info,
                      size: 100,
                      child: const Center(
                        child: Text('Tonal\nInfo'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: WxSheetSeverity.danger,
                      size: 100,
                      child: const Center(
                        child: Text('Elevated\nDanger'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: WxSheetSeverity.warning,
                      size: 100,
                      child: const Center(
                        child: Text('Elevated\nWarning'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: WxSheetSeverity.success,
                      size: 100,
                      child: const Center(
                        child: Text('Elevated\nSuccess'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.elevated,
                      severity: WxSheetSeverity.info,
                      size: 100,
                      child: const Center(
                        child: Text('Elevated\nInfo'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: WxSheetSeverity.danger,
                      size: 100,
                      child: const Center(
                        child: Text('Filled\nDanger'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: WxSheetSeverity.warning,
                      size: 100,
                      child: const Center(
                        child: Text('Filled\nWarning'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: WxSheetSeverity.success,
                      size: 100,
                      child: const Center(
                        child: Text('Filled\nSuccess'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.filled,
                      severity: WxSheetSeverity.info,
                      size: 100,
                      child: const Center(
                        child: Text('Filled\nInfo'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: WxSheetSeverity.danger,
                      size: 100,
                      child: const Center(
                        child: Text('Outlined\nDanger'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: WxSheetSeverity.warning,
                      size: 100,
                      child: const Center(
                        child: Text('Outlined\nWarning'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: WxSheetSeverity.success,
                      size: 100,
                      child: const Center(
                        child: Text('Outlined\nSuccess'),
                      ),
                    ),
                    WxTapSheet.square(
                      onPressed: () {},
                      variant: WxSheetVariant.outlined,
                      severity: WxSheetSeverity.info,
                      size: 100,
                      child: const Center(
                        child: Text('Outlined\nInfo'),
                      ),
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
