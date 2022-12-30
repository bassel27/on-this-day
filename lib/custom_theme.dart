import 'package:flutter/material.dart';
import 'constants.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: Color(darkRed)),
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(darkRed),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
      fontFamily: 'Montserrat',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: Colors.green),
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
