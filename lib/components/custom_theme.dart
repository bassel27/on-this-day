import 'package:flutter/material.dart';
import 'constants.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Mulish-Italic-VariableFont_wght',
      textTheme: const TextTheme(
        bodyText2: TextStyle(fontWeight: FontWeight.w500),
        button: TextStyle(
          fontWeight: FontWeight.w600,
          color: kSecondaryColor,
        ), // affects card text
        headline6: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: kAppBarColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        backgroundColor: kAccentColor,
      )),
      tabBarTheme: const TabBarTheme(
        unselectedLabelColor: kInactiveLabelColor,
        labelColor: kActiveLabelColor,
        labelStyle: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 17, letterSpacing: 0.5),
      ),
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
