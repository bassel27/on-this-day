import 'package:intl/intl.dart';
import 'package:on_this_day/providers/app_bar_title.dart';
import 'package:on_this_day/screens/info_display_screen/info_display_screen.dart';
import '.../../../../../components/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../components/app_bar_text_widget_home.dart';
import '../../../providers/selected_date.dart';
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
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.favorite),
      activeColorPrimary: kActiveLabelColor,
      inactiveColorPrimary: kInactiveLabelColor,
    ),
    PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.home,
          color: kActiveLabelColor,
        ),
        inactiveIcon: const Icon(
          Icons.home,
          color: kInactiveLabelColor,
        ),
        activeColorPrimary: kActiveLabelColor,
        inactiveColorPrimary: kInactiveLabelColor,
        activeColorSecondary: Colors.amber),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      activeColorPrimary: kActiveLabelColor,
      inactiveColorPrimary: kInactiveLabelColor,
    ),
  ];

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
      backgroundColor: kBottomNavBarColor,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
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
        break;
    }
  }
}

