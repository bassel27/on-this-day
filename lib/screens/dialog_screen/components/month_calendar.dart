import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import '../../../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:on_this_day/components/constants.dart';

class MonthCalendar extends StatefulWidget {
  @override
  State<MonthCalendar> createState() => _MonthCalendarState();
}

class _MonthCalendarState extends State<MonthCalendar> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: MonthPicker.single(
        datePickerStyles: kDatePickerStyles,
        datePickerLayoutSettings: kDatePickerLayoutSettings,
        selectedDate: context.watch<SelectedDate>().possibleDate,
        onChanged: onMonthChange,
        firstDate: DateTime(DateTime.now().year, 1),
        lastDate: DateTime(DateTime.now().year, 12, 31),
      ),
    );
  }

  DatePickerStyles kDatePickerStyles = DatePickerStyles(
    displayedPeriodTitle: kCalendarElementsTextStyle.copyWith(fontSize: 18),
    currentDateStyle: kCalendarElementsTextStyle,
    selectedDateStyle:
        kCalendarElementsTextStyle.copyWith(color: kSecondaryColor),
    defaultDateTextStyle: kCalendarElementsTextStyle,
    nextIcon: const Icon(
      Icons.join_right,
      color: kSecondaryColor,
    ),
    prevIcon: const Icon(
      Icons.join_right,
      color: kSecondaryColor,
    ),
    selectedSingleDateDecoration: const BoxDecoration(
      color: kAccentColor,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
  );

  void onMonthChange(DateTime pickedDate) {
    setState(
      () {
        context.read<SelectedDate>().possibleDate = pickedDate;
      },
    );
  }
}
