import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Mulish-Italic-VariableFont_wght',
      primarySwatch: Colors
          .red, // some flutter widgets use shades o a color, this makes the shades available
      textTheme: TextTheme(
        bodyText2: TextStyle(fontWeight: FontWeight.w500), // affects card text
        headline6: TextStyle(
            color: Colors.white,
            fontSize: 25,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: kAppBarColor,
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: kUnselectedLabelColor,
        labelColor: kSelectedLabelColor,
        labelStyle: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 17, letterSpacing: 0.5),
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
