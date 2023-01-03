import 'package:flutter/material.dart';
import 'package:on_this_day/widgets/month_calendar.dart';
import 'package:provider/provider.dart';
import 'widgets/custom_theme.dart';
import 'widgets/my_bottom_navigation_bar.dart';
import 'providers/selected_date.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => SelectedDate(),
          ),
        ],
        child: MaterialApp(
          title: "On this day",
          home: MyBottomNavigationBar(),
          theme: CustomTheme.lightTheme,
        ),
      ),
    );
