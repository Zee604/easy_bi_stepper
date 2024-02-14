import 'package:easy_bi_stepper/src/stepper_data.dart';
import 'package:flutter/material.dart';

import 'dot_provider.dart';

class EasyBiStepperItem extends StatelessWidget {
  /// Stepper Item to show vertical stepper
  const EasyBiStepperItem(
      {Key? key,
      required this.item,
      required this.index,
      required this.totalLength,
      required this.gap,
      required this.activeIndex,
      required this.activeBarColor,
      required this.stepperDirection,
      required this.inActiveBarColor,
      required this.barWidth,
      required this.iconHeight,
      required this.iconWidth})
      : super(key: key);

  /// Stepper item of type [StepperData] to inflate stepper with data
  final StepperData item;

  /// Index at which the item is present
  final int index;

  /// Total length of the list provided
  final int totalLength;

  /// Active index which needs to be highlighted and before that
  final int activeIndex;

  /// Gap between the items in the stepper
  final double gap;

  /// Bar color for active step
  final Color activeBarColor;

  /// Bar color for inactive step
  final Color inActiveBarColor;

  /// Stepper direction takes [Axis]
  /// Use [Axis.horizontal] to get horizontal stepper
  /// Use [Axis.vertical] to get vertical stepper
  final Axis stepperDirection;

  /// Bar width/thickness
  final double barWidth;

  /// Height of [StepperData.iconWidget]
  final double iconHeight;

  /// Width of [StepperData.iconWidget]
  final double iconWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getChildren(),
    );
  }

  List<Widget> getChildren() {
    return [
      stepperDirection == Axis.vertical
          ? Column(
              children: [
                Container(
                  color: index == 0
                      ? Colors.transparent
                      : (index <= activeIndex
                          ? activeBarColor
                          : inActiveBarColor),
                  width: barWidth,
                  height: gap,
                ),
                DotProvider(
                  activeIndex: activeIndex,
                  index: index,
                  item: item,
                  totalLength: totalLength,
                  iconHeight: iconHeight,
                  iconWidth: iconWidth,
                ),
                Container(
                  color: index == totalLength - 1
                      ? Colors.transparent
                      : (index < activeIndex
                          ? activeBarColor
                          : inActiveBarColor),
                  width: barWidth,
                  height: gap,
                ),
              ],
            )
          : Row(
              children: [
                Container(
                  color: index == 0
                      ? Colors.transparent
                      : (index <= activeIndex
                          ? activeBarColor
                          : inActiveBarColor),
                  width: barWidth,
                  height: gap,
                ),
                DotProvider(
                  activeIndex: activeIndex,
                  index: index,
                  item: item,
                  totalLength: totalLength,
                  iconHeight: iconHeight,
                  iconWidth: iconWidth,
                ),
                Container(
                  color: index == totalLength - 1
                      ? Colors.transparent
                      : (index < activeIndex
                          ? activeBarColor
                          : inActiveBarColor),
                  width: barWidth,
                  height: gap,
                ),
              ],
            ),
      const SizedBox(width: 12),
      Expanded(
        child: item.title != null ? item.title! : SizedBox(),
      ),
    ];
  }
}
