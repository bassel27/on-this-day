import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';

class CalendarContainer extends StatelessWidget {
  final Widget child;
  CalendarContainer({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 27, 10, 0),
      decoration: kCalendarContainerDecoration.copyWith(
          color: Theme.of(context).primaryColorDark),
      child: child,
    );
  }
}
