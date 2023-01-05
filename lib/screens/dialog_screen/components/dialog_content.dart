import 'package:flutter/material.dart';
import 'package:on_this_day/screens/dialog_screen/components/calendar_container.dart';
import 'package:on_this_day/screens/dialog_screen/components/day_calendar.dart';
import 'calendar_button.dart';
import 'month_calendar.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import '../../../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:on_this_day/components/constants.dart';

class dialogContent extends StatefulWidget {
  @override
  State<dialogContent> createState() => _dialogContentState();
}

class _dialogContentState extends State<dialogContent> {
  ScrollController _scrollController = ScrollController();
  bool _isMonthVisible = true;
  void closeDialog() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return CalendarContainer(
      child: SingleChildScrollView(
        controller: _scrollController,
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
                        _scrollController.jumpTo(0);
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
      ),
    );
  }
}
