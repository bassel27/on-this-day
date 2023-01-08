import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';

class CalendarContainer extends StatelessWidget {
  final Widget child;
  CalendarContainer({required this.child});

  final BoxDecoration kCalendarContainerDecoration = BoxDecoration(
    color: kSecondaryColor,
    borderRadius: const BorderRadius.all(
      Radius.circular(kCalendarBorderRadius),
    ),
    border: Border.all(
      width: 2,
      color: kPrimaryColor2,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 27, 10, 0),
      decoration: kCalendarContainerDecoration,
      child: child,
    );
  }
}
