import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'package:choice/choice.dart';
import 'sample_scaffold.dart';
import 'severity_colors.dart';

class SampleSelectable extends StatelessWidget {
  const SampleSelectable({super.key});

  @override
  Widget build(BuildContext context) {
    return Choice(
      multiple: true,
      clearable: true,
      builder: (choice, child) {
        return Column(
          children: [
            SampleItem(
              title: 'Default Shape',
              child: Wrap(
                spacing: 10,
                children: [
                  WxToggleSheet.square(
                    size: 100,
                    variant: WxSheetVariant.text,
                    selected: choice.selected('text'),
                    onSelected: (val) => choice.select('text', val),
                    onPressed: () {},
                    child: const Center(child: Text('Text')),
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
                  WxToggleSheet.square(
                    selected: choice.selected('rect-tonal'),
                    onSelected: (val) => choice.select('rect-tonal', val),
                    onPressed: () {},
                    size: 100,
                    variant: WxSheetVariant.tonal,
                    child: const Center(child: Text('Tonal')),
                  ),
                  WxToggleSheet.square(
                    selected: choice.selected('rect-elevated'),
                    onSelected: (val) => choice.select('rect-elevated', val),
                    onPressed: () {},
                    size: 100,
                    variant: WxSheetVariant.elevated,
                    child: const Center(child: Text('Elevated')),
                  ),
                  WxToggleSheet.square(
                    selected: choice.selected('rect-filled'),
                    onSelected: (val) => choice.select('rect-filled', val),
                    onPressed: () {},
                    size: 100,
                    variant: WxSheetVariant.filled,
                    child: const Center(child: Text('Filled')),
                  ),
                  WxToggleSheet.square(
                    selected: choice.selected('rect-outlined'),
                    onSelected: (val) => choice.select('rect-outlined', val),
                    onPressed: () {},
                    size: 100,
                    variant: WxSheetVariant.outlined,
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
                  WxToggleSheet.circle(
                    selected: choice.selected('circle-tonal'),
                    onSelected: (val) => choice.select('circle-tonal', val),
                    onPressed: () {},
                    radius: 50,
                    variant: WxSheetVariant.tonal,
                    child: const Center(child: Text('Tonal')),
                  ),
                  WxToggleSheet.circle(
                    selected: choice.selected('circle-elevated'),
                    onSelected: (val) => choice.select('circle-elevated', val),
                    onPressed: () {},
                    radius: 50,
                    variant: WxSheetVariant.elevated,
                    child: const Center(child: Text('Elevated')),
                  ),
                  WxToggleSheet.circle(
                    selected: choice.selected('circle-filled'),
                    onSelected: (val) => choice.select('circle-filled', val),
                    onPressed: () {},
                    radius: 50,
                    variant: WxSheetVariant.filled,
                    child: const Center(child: Text('Filled')),
                  ),
                  WxToggleSheet.circle(
                    selected: choice.selected('circle-outlined'),
                    onSelected: (val) => choice.select('circle-outlined', val),
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
                  WxToggleSheet.stadium(
                    selected: choice.selected('stadium-tonal'),
                    onSelected: (val) => choice.select('stadium-tonal', val),
                    onPressed: () {},
                    width: 120,
                    height: 45,
                    variant: WxSheetVariant.tonal,
                    child: const Center(child: Text('Tonal')),
                  ),
                  WxToggleSheet.stadium(
                    selected: choice.selected('stadium-elevated'),
                    onSelected: (val) => choice.select('stadium-elevated', val),
                    onPressed: () {},
                    width: 120,
                    height: 45,
                    variant: WxSheetVariant.elevated,
                    child: const Center(child: Text('Elevated')),
                  ),
                  WxToggleSheet.stadium(
                    selected: choice.selected('stadium-filled'),
                    onSelected: (val) => choice.select('stadium-filled', val),
                    onPressed: () {},
                    width: 120,
                    height: 45,
                    variant: WxSheetVariant.filled,
                    child: const Center(child: Text('Filled')),
                  ),
                  WxToggleSheet.stadium(
                    selected: choice.selected('stadium-outlined'),
                    onSelected: (val) => choice.select('stadium-outlined', val),
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Wrap(
                    spacing: 10,
                    children: [
                      WxToggleSheet.square(
                        selected: choice.selected('text-danger'),
                        onSelected: (val) => choice.select('text-danger', val),
                        onPressed: () {},
                        size: 100,
                        severity: dangerColor,
                        child: const Center(
                          child: Text('Text\nDanger'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('text-warning'),
                        onSelected: (val) => choice.select('text-warning', val),
                        onPressed: () {},
                        size: 100,
                        severity: warningColor,
                        child: const Center(
                          child: Text('Text\nWarning'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('text-success'),
                        onSelected: (val) => choice.select('text-success', val),
                        onPressed: () {},
                        size: 100,
                        severity: successColor,
                        child: const Center(
                          child: Text('Text\nSuccess'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('text-info'),
                        onSelected: (val) => choice.select('text-info', val),
                        onPressed: () {},
                        size: 100,
                        severity: infoColor,
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
                      WxToggleSheet.square(
                        selected: choice.selected('tonal-danger'),
                        onSelected: (val) => choice.select('tonal-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: dangerColor,
                        size: 100,
                        child: const Center(
                          child: Text('Tonal\nDanger'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('tonal-warning'),
                        onSelected: (val) =>
                            choice.select('tonal-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: warningColor,
                        size: 100,
                        child: const Center(
                          child: Text('Tonal\nWarning'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('tonal-success'),
                        onSelected: (val) =>
                            choice.select('tonal-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: successColor,
                        size: 100,
                        child: const Center(
                          child: Text('Tonal\nSuccess'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('tonal-info'),
                        onSelected: (val) => choice.select('tonal-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: infoColor,
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
                      WxToggleSheet.square(
                        selected: choice.selected('elevated-danger'),
                        onSelected: (val) =>
                            choice.select('elevated-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: dangerColor,
                        size: 100,
                        child: const Center(
                          child: Text('Elevated\nDanger'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('elevated-warning'),
                        onSelected: (val) =>
                            choice.select('elevated-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: warningColor,
                        size: 100,
                        child: const Center(
                          child: Text('Elevated\nWarning'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('elevated-success'),
                        onSelected: (val) =>
                            choice.select('elevated-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: successColor,
                        size: 100,
                        child: const Center(
                          child: Text('Elevated\nSuccess'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('elevated-info'),
                        onSelected: (val) =>
                            choice.select('elevated-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: infoColor,
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
                      WxToggleSheet.square(
                        selected: choice.selected('filled-danger'),
                        onSelected: (val) =>
                            choice.select('filled-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: dangerColor,
                        size: 100,
                        child: const Center(
                          child: Text('Filled\nDanger'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('filled-warning'),
                        onSelected: (val) =>
                            choice.select('filled-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: warningColor,
                        size: 100,
                        child: const Center(
                          child: Text('Filled\nWarning'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('filled-success'),
                        onSelected: (val) =>
                            choice.select('filled-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: successColor,
                        size: 100,
                        child: const Center(
                          child: Text('Filled\nSuccess'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('filled-info'),
                        onSelected: (val) => choice.select('filled-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: infoColor,
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
                      WxToggleSheet.square(
                        selected: choice.selected('outlined-danger'),
                        onSelected: (val) =>
                            choice.select('outlined-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: dangerColor,
                        size: 100,
                        child: const Center(
                          child: Text('Outlined\nDanger'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('outlined-warning'),
                        onSelected: (val) =>
                            choice.select('outlined-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: warningColor,
                        size: 100,
                        child: const Center(
                          child: Text('Outlined\nWarning'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('outlined-success'),
                        onSelected: (val) =>
                            choice.select('outlined-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: successColor,
                        size: 100,
                        child: const Center(
                          child: Text('Outlined\nSuccess'),
                        ),
                      ),
                      WxToggleSheet.square(
                        selected: choice.selected('outlined-info'),
                        onSelected: (val) =>
                            choice.select('outlined-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: infoColor,
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
          ],
        );
      },
    );
  }
}
