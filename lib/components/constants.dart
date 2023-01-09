import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

const Color kPrimaryColor = Colors.white;
const Color kPrimaryColor2 = Color(0xFFB7CFDC);
const Color kSecondaryColor = Color(0xFF05445E);
const Color kAccentColor = Color(0xFF75E6DA);

const Color kDarkRedColor = Color(0xFFD32F2F);
const Color kLightGreyColor = Color(0xFFBDBDBD);
const Color kGreyColor = Color(0xFF757575);
const Color kPinkColor = Color(0xFFFFCDD2);
const Color kRedColor = Color(0xFFF44336);

const Color kBarsColor = kSecondaryColor;
const Color kAppBarColor = kBarsColor;
const Color kTabBarColor = kBarsColor;
const Color kBottomNavBarColor = kBarsColor;

const Color kActiveLabelColor = kAccentColor;
const Color kInactiveLabelColor = kPrimaryColor;

const double kCalendarBorderRadius = 30;

const TextStyle kCalendarElementsTextStyle = const TextStyle(
    color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700);

const DatePickerLayoutSettings kDatePickerLayoutSettings =
    DatePickerLayoutSettings(
  scrollPhysics: NeverScrollableScrollPhysics(),
  dayPickerRowHeight: 35,
);

