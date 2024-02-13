import 'package:flutter/material.dart';

class StepperData {
  /// title for the stepper
  final Widget? title;

  final Widget? iconWidget;

  /// Use the constructor of [StepperData] to pass the data needed.
  StepperData({this.iconWidget, this.title});
}

class StepperText {
  /// text for the stepper
  final String text;

  /// textStyle for stepper
  final TextStyle? textStyle;

  StepperText(this.text, {this.textStyle});
}
