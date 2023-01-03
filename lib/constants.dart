import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

const Color kDarkRedColor = Color(0xFFD32F2F);
const Color kLightGreyColor = Color(0xFFBDBDBD);
const Color kGreyColor = Color(0xFF757575);
const Color kPinkColor = Color(0xFFFFCDD2);
const Color kRedColor = Color(0xFFF44336);
const Color kAppBarColor = kDarkRedColor;
const Color kTabBarColor = kDarkRedColor;
const Color kTabBarIndicatorColor = kSelectedLabelColor;
const Color kNavBarColor = kDarkRedColor;
const Color kUnselectedLabelColor = kPinkColor;
const Color kSelectedLabelColor = Colors.white;
NavBarDecoration kNavBarDecoration = NavBarDecoration(
  border: Border.all(color: Color.fromARGB(255, 187, 7, 7), width: 3),
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30), topRight: Radius.circular(30)),
  colorBehindNavBar: Color.fromARGB(255, 0, 0, 0),
);
const double kCalendarBorderRadius = 30;

BoxDecoration kCalendarContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(kCalendarBorderRadius),
  ),
  border: Border.all(
    width: 2,
    color: Colors.white,
  ),
);

TextStyle kCalendarMonthsTextStyle =
    TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500);

var kDatePickerStyles = DatePickerStyles(
  displayedPeriodTitle: kCalendarMonthsTextStyle,
  currentDateStyle: kCalendarMonthsTextStyle,
  selectedDateStyle: kCalendarMonthsTextStyle.copyWith(color: Colors.black),
  defaultDateTextStyle: kCalendarMonthsTextStyle,
  nextIcon: Icon(
    Icons.join_right,
    color: kDarkRedColor,
  ),
  prevIcon: Icon(
    Icons.join_right,
    color: kDarkRedColor,
  ),
  selectedSingleDateDecoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);
