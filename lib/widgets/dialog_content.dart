import 'package:flutter/material.dart';
import 'package:on_this_day/widgets/calendar_container.dart';
import 'package:on_this_day/widgets/day_calendar.dart';
import 'calendar_button.dart';
import 'month_calendar.dart';

class dialogContent extends StatefulWidget {
  @override
  State<dialogContent> createState() => _dialogContentState();
}

class _dialogContentState extends State<dialogContent> {
  bool _isMonthVisible = true;

  @override
  Widget build(BuildContext context) {
    return CalendarContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _isMonthVisible ? MonthCalendar() : DayCalendar(),
          // TODO: seperate this widget in its own file and use provider to keep track of _isMonthVisible
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CalendarButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                ),
              ),
              CalendarButton(
                onPressed: () {
                  setState(() {
                    _isMonthVisible = false;
                  });
                },
                child: Text(
                  "Ok",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
