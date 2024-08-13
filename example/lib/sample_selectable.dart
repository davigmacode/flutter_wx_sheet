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
                  WxToggleSheet(
                    width: 100,
                    height: 100,
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
                  WxToggleSheet(
                    selected: choice.selected('rect-tonal'),
                    onSelected: (val) => choice.select('rect-tonal', val),
                    onPressed: () {},
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.tonal,
                    child: const Center(child: Text('Tonal')),
                  ),
                  WxToggleSheet(
                    selected: choice.selected('rect-elevated'),
                    onSelected: (val) => choice.select('rect-elevated', val),
                    onPressed: () {},
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.elevated,
                    child: const Center(child: Text('Elevated')),
                  ),
                  WxToggleSheet(
                    selected: choice.selected('rect-filled'),
                    onSelected: (val) => choice.select('rect-filled', val),
                    onPressed: () {},
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.filled,
                    child: const Center(child: Text('Filled')),
                  ),
                  WxToggleSheet(
                    selected: choice.selected('rect-outlined'),
                    onSelected: (val) => choice.select('rect-outlined', val),
                    onPressed: () {},
                    width: 100,
                    height: 100,
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
                      WxToggleSheet(
                        selected: choice.selected('text-danger'),
                        onSelected: (val) => choice.select('text-danger', val),
                        onPressed: () {},
                        width: 100,
                        height: 100,
                        severity: dangerColor,
                        child: const Center(
                          child: Text('Text\nDanger'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('text-warning'),
                        onSelected: (val) => choice.select('text-warning', val),
                        onPressed: () {},
                        width: 100,
                        height: 100,
                        severity: warningColor,
                        child: const Center(
                          child: Text('Text\nWarning'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('text-success'),
                        onSelected: (val) => choice.select('text-success', val),
                        onPressed: () {},
                        width: 100,
                        height: 100,
                        severity: successColor,
                        child: const Center(
                          child: Text('Text\nSuccess'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('text-info'),
                        onSelected: (val) => choice.select('text-info', val),
                        onPressed: () {},
                        width: 100,
                        height: 100,
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
                      WxToggleSheet(
                        selected: choice.selected('tonal-danger'),
                        onSelected: (val) => choice.select('tonal-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: dangerColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Tonal\nDanger'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('tonal-warning'),
                        onSelected: (val) =>
                            choice.select('tonal-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: warningColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Tonal\nWarning'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('tonal-success'),
                        onSelected: (val) =>
                            choice.select('tonal-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: successColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Tonal\nSuccess'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('tonal-info'),
                        onSelected: (val) => choice.select('tonal-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.tonal,
                        severity: infoColor,
                        width: 100,
                        height: 100,
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
                      WxToggleSheet(
                        selected: choice.selected('elevated-danger'),
                        onSelected: (val) =>
                            choice.select('elevated-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: dangerColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Elevated\nDanger'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('elevated-warning'),
                        onSelected: (val) =>
                            choice.select('elevated-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: warningColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Elevated\nWarning'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('elevated-success'),
                        onSelected: (val) =>
                            choice.select('elevated-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: successColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Elevated\nSuccess'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('elevated-info'),
                        onSelected: (val) =>
                            choice.select('elevated-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.elevated,
                        severity: infoColor,
                        width: 100,
                        height: 100,
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
                      WxToggleSheet(
                        selected: choice.selected('filled-danger'),
                        onSelected: (val) =>
                            choice.select('filled-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: dangerColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Filled\nDanger'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('filled-warning'),
                        onSelected: (val) =>
                            choice.select('filled-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: warningColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Filled\nWarning'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('filled-success'),
                        onSelected: (val) =>
                            choice.select('filled-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: successColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Filled\nSuccess'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('filled-info'),
                        onSelected: (val) => choice.select('filled-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.filled,
                        severity: infoColor,
                        width: 100,
                        height: 100,
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
                      WxToggleSheet(
                        selected: choice.selected('outlined-danger'),
                        onSelected: (val) =>
                            choice.select('outlined-danger', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: dangerColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Outlined\nDanger'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('outlined-warning'),
                        onSelected: (val) =>
                            choice.select('outlined-warning', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: warningColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Outlined\nWarning'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('outlined-success'),
                        onSelected: (val) =>
                            choice.select('outlined-success', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: successColor,
                        width: 100,
                        height: 100,
                        child: const Center(
                          child: Text('Outlined\nSuccess'),
                        ),
                      ),
                      WxToggleSheet(
                        selected: choice.selected('outlined-info'),
                        onSelected: (val) =>
                            choice.select('outlined-info', val),
                        onPressed: () {},
                        variant: WxSheetVariant.outlined,
                        severity: infoColor,
                        width: 100,
                        height: 100,
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
