import 'package:flutter/material.dart';
import 'package:on_this_day/widgets/my_alert_dialog.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MyAlertDialog();
                  });
            },
            icon: Icon(Icons.calendar_month)),
      ],
      backgroundColor: Theme.of(context).primaryColorDark,
      elevation: 0,
      title: Text(
        "On This Day",
      ),
    );
  }
}
