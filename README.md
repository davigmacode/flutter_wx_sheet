[![Pub Version](https://img.shields.io/pub/v/wx_sheet)](https://pub.dev/packages/wx_sheet) ![GitHub](https://img.shields.io/github/license/davigmacode/flutter_wx_sheet) [![GitHub](https://badgen.net/badge/icon/buymeacoffee?icon=buymeacoffee&color=yellow&label)](https://www.buymeacoffee.com/davigmacode) [![GitHub](https://badgen.net/badge/icon/ko-fi?icon=kofi&color=red&label)](https://ko-fi.com/davigmacode)

The sheet widget serves as the building block for many Widgetarian components, providing a base layer for customization.

[![Preview](https://github.com/davigmacode/flutter_wx_sheet/raw/main/media/preview.gif)](https://davigmacode.github.io/flutter_wx_sheet)

[Demo](https://davigmacode.github.io/flutter_wx_sheet)

## Usage

To read more about classes and other references used by `wx_sheet`, see the [API Reference](https://pub.dev/documentation/wx_sheet/latest/).

```dart
WxSheet(
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
    WxSheet.circle(
      radius: 50,
      variant: WxSheetVariant.tonal,
      child: Center(child: Text('Tonal')),
    ),
    WxSheet.circle(
      radius: 50,
      variant: WxSheetVariant.elevated,
      child: Center(child: Text('Elevated')),
    ),
    WxSheet.circle(
      radius: 50,
      variant: WxSheetVariant.filled,
      child: Center(child: Text('Filled')),
    ),
    WxSheet.circle(
      radius: 50,
      variant: WxSheetVariant.outlined,
      child: Center(child: Text('Outlined')),
    ),
  ],
)

Wrap(
  spacing: 10,
  children: [
    WxSheet(
      width: 100,
      height: 100,
      severity: Colors.red,
      child: Center(
        child: WxTextTile(
          align: WxTextAlign.center,
          title: Text('Text'),
          subtitle: Text('Danger'),
        ),
      ),
    ),
    WxSheet(
      width: 100,
      height: 100,
      severity: Colors.yellow,
      child: Center(
        child: WxTextTile(
          align: WxTextAlign.center,
          title: Text('Text'),
          subtitle: Text('Warning'),
        ),
      ),
    ),
    WxSheet(
      width: 100,
      height: 100,
      severity: Colors.green,
      child: Center(
        child: WxTextTile(
          align: WxTextAlign.center,
          title: Text('Text'),
          subtitle: Text('Success'),
        ),
      ),
    ),
    WxSheet(
      width: 100,
      height: 100,
      severity: Colors.blue,
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