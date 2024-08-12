import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_event.dart';
import 'package:animated_checkmark/animated_checkmark.dart';

class DrivenCheckmark extends Checkmark implements DrivenProperty<Widget> {
  const DrivenCheckmark({
    super.key,
    super.curve,
    super.duration,
    super.color,
    super.weight,
    super.size,
    super.rounded,
    super.drawCross,
    super.drawDash,
  });

  @override
  resolve(events) {
    return Checkmark(
      curve: curve,
      duration: duration,
      color: color,
      weight: weight,
      size: size,
      rounded: rounded,
      drawCross: drawCross,
      drawDash: drawDash,
      checked: WidgetEvent.isSelected(events),
      indeterminate: WidgetEvent.isIndeterminate(events),
    );
  }
}
