import 'package:flutter/material.dart';
import 'package:on_this_day/widgets/dialog_content.dart';
import '../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:on_this_day/constants.dart';
import 'calendar_icon_button.dart';

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
        CalendarIconButton(),
      ],
    );
  }
}
