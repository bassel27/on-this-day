import 'package:flutter/material.dart';
import 'package:on_this_day/providers/app_bar_title.dart';
import 'calendar_icon_button.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  MyAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: context.watch<AppBarTitle>().widget,
      // title: RichText(
      //   text: TextSpan(
      //     style: appBarTextStyle,
      //     children: [
      //       const TextSpan(
      //         text: "On ",
      //       ),
      //       TextSpan(
      //         // TODO: Events/ deaths/ births on .... & favourites & settings
      //         text: _appBarText,
      //         style: appBarTextStyle!
      //             .copyWith(fontSize: 19, fontWeight: FontWeight.w400),
      //       ),
      //     ],
      //   ),
      // ),
      actions: [
        CalendarIconButton(),
      ],
    );
  }
}
