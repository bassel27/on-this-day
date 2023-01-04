import 'package:flutter/material.dart';
import 'package:on_this_day/widgets/dialog_content.dart';
import '../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:on_this_day/constants.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    var appBarTextStyle = Theme.of(context).textTheme.headline6;
    return AppBar(
      backgroundColor: Theme.of(context).primaryColorDark,
      elevation: 0,
      title: RichText(
        text: TextSpan(
          style: appBarTextStyle,
          children: [
            TextSpan(
              text: "On ",
            ),
            TextSpan(
              text:
                  "${DateFormat('MM-dd').format((context.watch<SelectedDate>().selectedDate))}",
              style: appBarTextStyle!
                  .copyWith(fontSize: 19, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
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
        ),
      ],
    );
  }
}
