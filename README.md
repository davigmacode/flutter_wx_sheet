[![Pub Version](https://img.shields.io/pub/v/wx_sheet)](https://pub.dev/packages/wx_sheet) ![GitHub](https://img.shields.io/github/license/davigmacode/flutter_wx_sheet) [![GitHub](https://badgen.net/badge/icon/buymeacoffee?icon=buymeacoffee&color=yellow&label)](https://www.buymeacoffee.com/davigmacode) [![GitHub](https://badgen.net/badge/icon/ko-fi?icon=kofi&color=red&label)](https://ko-fi.com/davigmacode)

The sheet widget serves as the building block for many Widgetarian components, providing a base layer for customization.

[![Preview](https://github.com/davigmacode/flutter_wx_sheet/raw/main/media/preview.gif)](https://davigmacode.github.io/flutter_wx_sheet)

[Demo](https://davigmacode.github.io/flutter_wx_sheet)

## Usage

To read more about classes and other references used by `wx_sheet`, see the [API Reference](https://pub.dev/documentation/wx_sheet/latest/).

```dart
WxSheet.square(
  size: 100,
  variant: WxSheetVariant.tonal,
  borderRadius: BorderRadius.all(Radius.circular(5)),
  child: Center(child: Text('Tonal')),
)

Wrap(
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
)

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
)
```

## Sponsoring

<a href="https://www.buymeacoffee.com/davigmacode" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="45"></a>
<a href="https://ko-fi.com/davigmacode" target="_blank"><img src="https://storage.ko-fi.com/cdn/brandasset/kofi_s_tag_white.png" alt="Ko-Fi" height="45"></a>

If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to read the issues, fix bugs, merge pull requests and add features to these packages.