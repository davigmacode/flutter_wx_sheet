import 'package:flutter/material.dart';
import 'package:theme_patrol/theme_patrol.dart';

class ThemePicker extends StatelessWidget {
  const ThemePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeConsumer(builder: (context, theme, child) {
      return Wrap(
        spacing: 15,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
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
                value: 'm2',
                label: Text('M2'),
              ),
              ButtonSegment(
                value: 'm3',
                label: Text('M3'),
              ),
              ButtonSegment(
                value: 'ios',
                label: Text('IOS'),
              ),
            ],
            selected: {theme.selected},
            onSelectionChanged: (state) => theme.select(state.first),
          ),
          IconButton.outlined(
            onPressed: theme.toggleMode,
            icon: Icon(theme.modeIcon),
          ),
        ],
      );
    });
  }
}
