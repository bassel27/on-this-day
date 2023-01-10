import 'package:flutter/material.dart';
import './components/my_persistent_tab_view.dart';
import 'package:on_this_day/providers/app_bar_title.dart';
import './components/calendar_icon_button.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarPersistentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: context.watch<AppBarTitle>().widget,
        actions: [
          CalendarIconButton(),
        ],
      ),
      body: Container(
        child: MyPersistentTabView(),
      ),
    );
  }
}
