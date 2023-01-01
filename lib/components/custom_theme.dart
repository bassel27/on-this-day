import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: kAppBarColor),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: kUnselectedLabelColor,
        labelColor: kSelectedLabelColor,
      ),
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.purple,
        ));
  }
}
