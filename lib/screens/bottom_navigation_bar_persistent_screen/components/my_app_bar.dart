import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';
import '../../../providers/selected_date.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'calendar_icon_button.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String _appBarText;

  MyAppBar(this._appBarText);

  @override
  Widget build(BuildContext context) {
    var appBarTextStyle = Theme.of(context).textTheme.headline6;
    return AppBar(
      elevation: 0,
      title: RichText(
        text: TextSpan(
          style: appBarTextStyle,
          children: [
            const TextSpan(
              text: "On ",
            ),
            TextSpan(
              // TODO: Events/ deaths/ births on .... & favourites & settings
              text: _appBarText,
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
