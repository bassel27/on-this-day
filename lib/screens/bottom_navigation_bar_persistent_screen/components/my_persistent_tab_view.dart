import 'package:on_this_day/providers/app_bar_title.dart';
import 'package:on_this_day/screens/info_display_screen/info_display_screen.dart';
import '.../../../../../components/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../components/app_bar_text_widget_home.dart';
import '../../settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyPersistentTabView extends StatelessWidget {
  final List<Widget> _buildScreens = [
    InfoDisplayScreen(),
    InfoDisplayScreen(),
    SettingsScreen()
  ];

  final List<PersistentBottomNavBarItem> _navBarsItems = [
    ...[
      const Icon(Icons.favorite),
      const Icon(Icons.home),
      const Icon(Icons.settings),
    ].map((icon) {
      return PersistentBottomNavBarItem(
        icon: icon,
        activeColorPrimary: kActiveLabelColor,
        inactiveColorPrimary: kInactiveLabelColor,
      );
    }).toList()
  ];

  final int _animationDuration = 300;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(initialIndex: 1),
      onItemSelected: (index) {
        _onItemSelected(index, context);
      },
      screens: _buildScreens,
      items: _navBarsItems,
      backgroundColor: kBarsColor,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: _animationDuration),
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        duration: Duration(milliseconds: _animationDuration),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }

  void _onItemSelected(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.read<AppBarTitle>().widget = const Text("Favorites");
        break;
      case 1:
        context.read<AppBarTitle>().widget = AppBarTextWidgetHome();
        break;
      default:
        context.read<AppBarTitle>().widget = const Text("Settings");
    }
  }
}