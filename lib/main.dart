import 'package:flutter/material.dart';
import 'components/custom_theme.dart';
import 'components/my_bottom_navigation_bar.dart';

void main() => runApp(
      MaterialApp(
        home: MyBottomNavigationBar(),
        theme: CustomTheme.lightTheme,
      ),
    );
