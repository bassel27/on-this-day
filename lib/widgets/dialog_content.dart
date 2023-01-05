import 'package:flutter/material.dart';
import 'package:on_this_day/widgets/calendar_container.dart';
import 'package:on_this_day/widgets/day_calendar.dart';
import 'calendar_button.dart';
import 'month_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import '../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:on_this_day/constants.dart';

class dialogContent extends StatefulWidget {
  @override
  State<dialogContent> createState() => _dialogContentState();
}

class _dialogContentState extends State<dialogContent> {
  bool _isMonthVisible = true;
  void closeDialog() {
    Navigator.pop(context);
  }

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
                onPressed: closeDialog,
                child: const Text(
                  "Cancel",
                ),
              ),
              CalendarButton(
                child: const Text(
                  "Ok",
                ),
                onPressed: () {
                  if (_isMonthVisible) {
                    setState(() {
                      _isMonthVisible = false;
                    });
                  } else {
                    context.read<SelectedDate>().updateAppBar();
                    closeDialog();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
