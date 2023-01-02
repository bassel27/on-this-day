import 'package:flutter/material.dart';
import 'widgets/custom_theme.dart';
import 'widgets/my_bottom_navigation_bar.dart';

void main() => runApp(
      MaterialApp(
        title: "On this day",
        home: MyBottomNavigationBar(),
        theme: CustomTheme.lightTheme,
      ),
    );
