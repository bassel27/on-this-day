import 'package:flutter/material.dart';
import 'package:on_this_day/screens/info_display_screen/info_display_screen.dart';
import '../../components/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../settings_screen/settings_screen.dart';
import 'components/my_app_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [InfoDisplayScreen(), InfoDisplayScreen(), SettingsScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: kSelectedLabelColor,
        inactiveColorPrimary: kUnselectedLabelColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite),
        title: ("Favorites"),
        activeColorPrimary: kSelectedLabelColor,
        inactiveColorPrimary: kUnselectedLabelColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: ("Settings"),
        activeColorPrimary: kSelectedLabelColor,
        inactiveColorPrimary: kUnselectedLabelColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor:
            Theme.of(context).primaryColorDark, // Default is Colors.white.
        decoration: kNavBarDecoration,
        popAllScreensOnTapOfSelectedTab: true,
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
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }
}
