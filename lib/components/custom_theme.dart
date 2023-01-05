import 'package:flutter/material.dart';
import 'constants.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Mulish-Italic-VariableFont_wght',
      primarySwatch: Colors
          .red, // some flutter widgets use shades o a color, this makes the shades available
      textTheme: const TextTheme(
        bodyText2: TextStyle(fontWeight: FontWeight.w500),
        button: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.red), // affects card text
        headline6: TextStyle(
            color: Colors.white,
            fontSize: 25,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: kAppBarColor,
      ),
      tabBarTheme: const TabBarTheme(
        unselectedLabelColor: kInactiveLabelColor,
        labelColor: kActiveLabelColor,
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
