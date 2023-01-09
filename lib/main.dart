import 'package:flutter/material.dart';
import 'package:on_this_day/providers/app_bar_title.dart';
import 'package:provider/provider.dart';
import 'components/app_bar_text_widget_home.dart';
import 'components/custom_theme.dart';
import 'screens/bottom_navigation_bar_persistent_screen/my_bottom_navigation_bar.dart';
import 'providers/selected_date.dart';

// screens controlled by the bottom navbar aren't put in the routes
void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => SelectedDate(),
          ),
          ChangeNotifierProvider(
            create: (_) => AppBarTitle(AppBarTextWidgetHome()),
          ),
        ],
        child: MaterialApp(
          title: "On this day",
          home: BottomNavigationBarPersistentScreen(),
          theme: CustomTheme.lightTheme,
        ),
      ),
    );
