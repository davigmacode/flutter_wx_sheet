import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'sample_scaffold.dart';
import 'severity_colors.dart';

class SampleBasic extends StatelessWidget {
  const SampleBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SampleItem(
          title: 'Default Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxStaticSheet(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                child: Text('Text'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SampleItem(
          title: 'Rectangle Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxStaticSheet(
                width: 100,
                height: 100,
                variant: WxSheetVariant.tonal,
                alignment: Alignment.center,
                child: Text('Tonal'),
              ),
              WxStaticSheet(
                width: 100,
                height: 100,
                variant: WxSheetVariant.elevated,
                alignment: Alignment.center,
                child: Text('Elevated'),
              ),
              WxStaticSheet(
                width: 100,
                height: 100,
                variant: WxSheetVariant.filled,
                alignment: Alignment.center,
                child: Text('Filled'),
              ),
              WxStaticSheet(
                width: 100,
                height: 100,
                variant: WxSheetVariant.outlined,
                alignment: Alignment.center,
                child: Text('Outlined'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SampleItem(
          title: 'Circle Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxStaticSheet.circle(
                radius: 50,
                variant: WxSheetVariant.tonal,
                alignment: Alignment.center,
                child: Text('Tonal'),
              ),
              WxStaticSheet.circle(
                radius: 50,
                variant: WxSheetVariant.elevated,
                alignment: Alignment.center,
                child: Text('Elevated'),
              ),
              WxStaticSheet.circle(
                radius: 50,
                variant: WxSheetVariant.filled,
                alignment: Alignment.center,
                child: Text('Filled'),
              ),
              WxStaticSheet.circle(
                radius: 50,
                variant: WxSheetVariant.outlined,
                alignment: Alignment.center,
                child: Text('Outlined'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SampleItem(
          title: 'Stadium Shape',
          child: Wrap(
            spacing: 10,
            children: [
              WxStaticSheet.stadium(
                width: 120,
                height: 45,
                variant: WxSheetVariant.tonal,
                alignment: Alignment.center,
                child: Text('Tonal'),
              ),
              WxStaticSheet.stadium(
                width: 120,
                height: 45,
                variant: WxSheetVariant.elevated,
                alignment: Alignment.center,
                child: Text('Elevated'),
              ),
              WxStaticSheet.stadium(
                width: 120,
                height: 45,
                variant: WxSheetVariant.filled,
                alignment: Alignment.center,
                child: Text('Filled'),
              ),
              WxStaticSheet.stadium(
                width: 120,
                height: 45,
                variant: WxSheetVariant.outlined,
                alignment: Alignment.center,
                child: Text('Outlined'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SampleItem(
          title: 'Color Severity',
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 10,
                children: [
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    severity: dangerColor,
                    alignment: Alignment.center,
                    child: Text('Text\nDanger'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    severity: warningColor,
                    alignment: Alignment.center,
                    child: Text('Text\nWarning'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    severity: successColor,
                    alignment: Alignment.center,
                    child: Text('Text\nSuccess'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    severity: infoColor,
                    alignment: Alignment.center,
                    child: Text('Text\nInfo'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Wrap(
                spacing: 10,
                children: [
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.tonal,
                    severity: dangerColor,
                    alignment: Alignment.center,
                    child: Text('Tonal\nDanger'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.tonal,
                    severity: warningColor,
                    alignment: Alignment.center,
                    child: Text('Tonal\nWarning'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.tonal,
                    severity: successColor,
                    alignment: Alignment.center,
                    child: Text('Tonal\nSuccess'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.tonal,
                    severity: infoColor,
                    alignment: Alignment.center,
                    child: Text('Tonal\nInfo'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Wrap(
                spacing: 10,
                children: [
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.elevated,
                    severity: dangerColor,
                    alignment: Alignment.center,
                    child: Text('Elevated\nDanger'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.elevated,
                    severity: warningColor,
                    alignment: Alignment.center,
                    child: Text('Elevated\nWarning'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.elevated,
                    severity: successColor,
                    alignment: Alignment.center,
                    child: Text('Elevated\nSuccess'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.elevated,
                    severity: infoColor,
                    alignment: Alignment.center,
                    child: Text('Elevated\nInfo'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Wrap(
                spacing: 10,
                children: [
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.filled,
                    severity: dangerColor,
                    alignment: Alignment.center,
                    child: Text('Filled\nDanger'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.filled,
                    severity: warningColor,
                    alignment: Alignment.center,
                    child: Text('Filled\nWarning'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.filled,
                    severity: successColor,
                    alignment: Alignment.center,
                    child: Text('Filled\nSuccess'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.filled,
                    severity: infoColor,
                    alignment: Alignment.center,
                    child: Text('Filled\nInfo'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Wrap(
                spacing: 10,
                children: [
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.outlined,
                    severity: dangerColor,
                    alignment: Alignment.center,
                    child: Text('Outlined\nDanger'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.outlined,
                    severity: warningColor,
                    alignment: Alignment.center,
                    child: Text('Outlined\nWarning'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.outlined,
                    severity: successColor,
                    alignment: Alignment.center,
                    child: Text('Outlined\nSuccess'),
                  ),
                  WxStaticSheet(
                    width: 100,
                    height: 100,
                    variant: WxSheetVariant.outlined,
                    severity: infoColor,
                    alignment: Alignment.center,
                    child: Text('Outlined\nInfo'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
