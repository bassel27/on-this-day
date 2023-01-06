import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import '../../../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:on_this_day/components/constants.dart';

class DayCalendar extends StatefulWidget {
  @override
  State<DayCalendar> createState() => _DayCalendarState();
}

class _DayCalendarState extends State<DayCalendar> {
  void onDayChange(DateTime pickedDate) {
    setState(
      () {
        context.read<SelectedDate>().day = pickedDate;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: DayPicker.single(
        datePickerStyles: kDatePickerRangeStyles,
        datePickerLayoutSettings: kDatePickerLayoutSettings,
        selectedDate: context.watch<SelectedDate>().probableDate,
        onChanged: onDayChange,
        firstDate: DateTime(DateTime.now().year, 1),
        lastDate: DateTime(DateTime.now().year, 12, 31),
      ),
    );
  }
}
