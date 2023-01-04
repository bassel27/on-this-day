import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:on_this_day/widgets/calendar_container.dart';
import '../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:on_this_day/constants.dart';
import 'calendar_button.dart';
import 'my_month_picker.dart';

class MonthCalendar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return CalendarContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyMonthPicker(),
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
                  CalendarContainer(
                    child: DayPicker.single(
                      selectedDate: DateTime.now(),
                      onChanged: (pickedDate) {},
                      firstDate: DateTime(DateTime.now().year, 1),
                      lastDate: DateTime(DateTime.now().year, 12),
                    ),
                  );
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
