import 'package:flutter/material.dart';
import './custom_theme.dart';
import 'components/my_bottom_navigation_bar.dart';
import 'components/info_cards_stack.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// the underscore turns this class into a private class that can be only used
//inside this file
class _MyAppState extends State<MyApp> {
  // state of MyApp class
  //setState calls the build method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      home: Scaffold(
          appBar: AppBar(
            title: Text("On this Day"),
          ),
          body: Column(
            children: [
              Expanded(child: InfoCardsStack(["Info goes here", "afd"])),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: MyBottomNavigationBar(),
              ),
            ],
          )),
    );
  }
}
