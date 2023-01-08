import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/custom_theme.dart';
import 'screens/bottom_navigation_bar_persistent_screen/my_bottom_navigation_bar.dart';
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
          home: BottomNavigationBarPersistentScreen(),
          theme: CustomTheme.lightTheme,
        ),
      ),
    );
