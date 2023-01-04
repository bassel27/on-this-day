import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import '../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:on_this_day/constants.dart';
import 'package:on_this_day/constants.dart';

class DayCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DayPicker.single(
      datePickerStyles: kDatePickerRangeStyles,
      datePickerLayoutSettings: DatePickerLayoutSettings(
        dayPickerRowHeight: 33,
      ),
      selectedDate: DateTime.now(),
      onChanged: (pickedDate) {},
      firstDate: DateTime(DateTime.now().year, 1),
      lastDate: DateTime(DateTime.now().year, 12),
    );
  }
}
