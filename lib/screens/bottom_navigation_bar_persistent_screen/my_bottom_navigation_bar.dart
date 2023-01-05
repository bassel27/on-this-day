import 'package:flutter/material.dart';
import 'package:on_this_day/screens/info_display_screen/info_display_screen.dart';
import '../../components/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../settings_screen/settings_screen.dart';
import 'components/my_app_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);

  List<Widget> _buildScreens() {
    return [InfoDisplayScreen(), InfoDisplayScreen(), SettingsScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: PersistentTabView(
        context,
        navBarHeight: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.077
            : kBottomNavigationBarHeight,
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
            NavBarStyle.style1, // Choose the nav bar style with this property.
      ),
    );
  }
}
