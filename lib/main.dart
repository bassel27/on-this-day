import 'package:flutter/material.dart';
import 'components/custom_theme.dart';
import 'components/my_bottom_navigation_bar.dart';
import 'components/info_cards_stack.dart';
import './constants.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

// the underscore turns this class into a private class that can be only used
//inside this file
class MyApp extends StatelessWidget {
  // state of MyApp class
  //setState calls the build method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: <Tab>[
                Tab(text: "Births"),
                Tab(text: "Events"),
                Tab(text: "Deaths"),
              ]),
              title: Text("On this Day"),
            ),
            body:
                TabBarView(physics: NeverScrollableScrollPhysics(), children: [
              Column(
                children: [
                  SizedBox(height: 5),
                  Expanded(child: InfoCardsStack(["Info goes here", "afd"])),
                  SizedBox(height: 10),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: MyBottomNavigationBar(),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 5),
                  Expanded(child: InfoCardsStack(["Info goes here", "afd"])),
                  SizedBox(height: 10),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: MyBottomNavigationBar(),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 5),
                  Expanded(child: InfoCardsStack(["Info goes here", "afd"])),
                  SizedBox(height: 10),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: MyBottomNavigationBar(),
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}
