import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import '../providers/selected_date.dart';
import 'package:provider/provider.dart';

class MonthCalendar extends StatefulWidget {
  @override
  State<MonthCalendar> createState() => _MonthCalendar();
}

class _MonthCalendar extends State<MonthCalendar> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: MonthPicker.single(
          selectedDate: context.watch<SelectedDate>().selectedDate,
          onChanged: (pickedDate) {
            setState(() {
              context.read<SelectedDate>().selectedDate = pickedDate;
            });
          },
          firstDate: DateTime(DateTime.now().year, 1),
          lastDate: DateTime(DateTime.now().year, 12)),
    );
   
  }
}
