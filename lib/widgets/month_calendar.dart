import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import '../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:on_this_day/constants.dart';

class MonthCalendar extends StatefulWidget {
  @override
  State<MonthCalendar> createState() => _MonthCalendarState();
}

class _MonthCalendarState extends State<MonthCalendar> {
  void onMonthChange(DateTime pickedDate) {
    setState(
      () {
        context.read<SelectedDate>().selectedDate = pickedDate;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MonthPicker.single(
      datePickerStyles: kDatePickerStyles,
      datePickerLayoutSettings: DatePickerLayoutSettings(
        dayPickerRowHeight: 33,
      ),
      selectedDate: context.watch<SelectedDate>().selectedDate,
      onChanged: onMonthChange,
      firstDate: DateTime(DateTime.now().year, 1),
      lastDate: DateTime(DateTime.now().year, 12),
    );
  }
}
