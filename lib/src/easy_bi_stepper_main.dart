import 'package:easy_bi_stepper/easy_bi_stepper.dart';
import 'package:easy_bi_stepper/src/stepper_data.dart';
import 'package:flutter/material.dart';

import 'easy_bi_stepper_base.dart';
import 'easy_bi_stepper_horizontal.dart';

class EasyBiStepper extends StatelessWidget {
  /// Another stepper is a package, which helps build
  /// customizable and easy to manage steppers.
  ///
  /// The package can be used to build horizontal as well
  /// as vertical steppers just by providing [Axis] in the [stepperDirection] parameter.
  const EasyBiStepper({
    Key? key,
    required this.stepperList,
    this.verticalGap = 40,
    this.activeIndex = 0,
    required this.stepperDirection,
    this.activeBarColor = Colors.blue,
    this.inActiveBarColor = Colors.grey,
    this.barThickness = 2,
    this.scrollPhysics,
    this.iconHeight = 20,
    this.iconWidth = 20,
  })  : assert(verticalGap >= 0),
        super(key: key);

  /// Stepper [List] of type [StepperData] to render the Stepper on the UI with data
  final List<StepperData> stepperList;

  /// Gap between the items in the stepper, Default = 40
  /// (Use it to give fixed height of stepper bar when using [Axis.vertical])
  final double verticalGap;

  /// Active index - till which [index] the stepper will be highlighted
  ///
  /// Note : When using the [iconWidget] from [StepperData] to pass
  /// your custom dotWidget, you need to pass the dotWidget decoration to make it look active.
  /// In the above case only the stepper bar color will change to [activeBarColor]
  final int activeIndex;

  /// Stepper direction takes [Axis]
  /// Use [Axis.horizontal] to get horizontal stepper
  /// Use [Axis.vertical] to get vertical stepper
  final Axis stepperDirection;

  /// Bar color for active step
  final Color activeBarColor;

  /// Bar color for inactive step
  final Color inActiveBarColor;

  /// Bar width/thickness/height
  final double barThickness;

  /// Height of [StepperData.iconWidget]
  ///
  /// Default value = 20
  final double iconHeight;

  /// Width of [StepperData.iconWidget]
  ///
  /// Default value = 20
  final double iconWidth;

  /// Scroll physics for listview if it is nested with some kind of Scrolling Widget
  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    var crossAxisAlign = stepperDirection == Axis.horizontal
        ? CrossAxisAlignment.end
        : CrossAxisAlignment.start;
    final Iterable<int> iterable = Iterable<int>.generate(stepperList.length);
    return Flex(
      crossAxisAlignment: crossAxisAlign,
      direction: stepperDirection,
      children: iterable
          .map((index) => _getPreferredStepper(context, index: index))
          .toList(),
    );
  }

  Widget _getPreferredStepper(BuildContext context, {required int index}) {
    if (stepperDirection == Axis.horizontal) {
      return EasyStepperItemHorizontal(
        index: index,
        item: stepperList[index],
        totalLength: stepperList.length,
        activeIndex: activeIndex,
        inActiveBarColor: inActiveBarColor,
        activeBarColor: activeBarColor,
        barHeight: barThickness,
        iconHeight: iconHeight,
        iconWidth: iconWidth,
      );
    } else {
      return EasyBiStepperItem(
        index: index,
        item: stepperList[index],
        totalLength: stepperList.length,
        gap: verticalGap,
        activeIndex: activeIndex,
        inActiveBarColor: inActiveBarColor,
        stepperDirection: stepperDirection,
        activeBarColor: activeBarColor,
        barWidth: barThickness,
        iconHeight: iconHeight,
        iconWidth: iconWidth,
      );
    }
  }
}
