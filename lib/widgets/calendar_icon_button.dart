import 'package:flutter/material.dart';
import 'package:on_this_day/constants.dart';
import 'dialog_content.dart';

class CalendarIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(kCalendarBorderRadius),
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  content: dialogContent());
            });
      },
      icon: Icon(Icons.calendar_month),
    );
  }
}
