import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';
import '../../dialog_screen/components/dialog_content.dart';

class CalendarIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(kCalendarBorderRadius),
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  content: dialogContent());
            });
      },
      icon: const Icon(
        Icons.calendar_month,
        color: kAccentColor,
      ),
    );
  }
}
