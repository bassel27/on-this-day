import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../providers/selected_date.dart';

class AppBarTextWidgetHome extends StatelessWidget {
  getAppBarTextStyle(context) {
    return Theme.of(context).textTheme.headline6;
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: getAppBarTextStyle(context),
        children: [
          const TextSpan(
            text: "On ",
          ),
          TextSpan(
            // TODO: Events/ deaths/ births on .... & favourites & settings
            text:
                "${DateFormat('MM-dd').format((context.read<SelectedDate>().selectedDate))}",
            style: getAppBarTextStyle(context)!
                .copyWith(fontSize: 19.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
