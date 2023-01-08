import 'package:flutter/material.dart';
import 'package:on_this_day/screens/info_display_screen/info_display_screen.dart';
import '../../components/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../settings_screen/settings_screen.dart';
import 'components/my_app_bar.dart';
import 'package:provider/provider.dart';
import '../../../providers/selected_date.dart';
import 'package:intl/intl.dart';

class BottomNavigationBarPersistentScreen extends StatefulWidget {
  @override
  State<BottomNavigationBarPersistentScreen> createState() =>
      _BottomNavigationBarPersistentScreenState();
}

class _BottomNavigationBarPersistentScreenState
    extends State<BottomNavigationBarPersistentScreen> {
  CurrentScreenByNavBar currentScreenByNavBar =
      CurrentScreenByNavBar.HomeInfoDisplayScreen;

  final List<Widget> _buildScreens = [
    InfoDisplayScreen(),
    InfoDisplayScreen(),
    SettingsScreen()
  ];
  String? _appBarText;

  String get appBarText {
    if (_appBarText == null) {
      _appBarText =
          "${DateFormat('MM-dd').format((context.watch<SelectedDate>().selectedDate))}";
    }
    return _appBarText as String;
  }

  // void setAppBarText(int index) {
  //   switch (index) {
  //     case 0:
  //       _appBarText = "Favorites";
  //       break;
  //     case 1:
  //       _appBarText =
  //           "${DateFormat('MM-dd').format((context.watch<SelectedDate>().selectedDate))}";
  //       break;
  //     default:
  //       _appBarText = "Favorites";
  //       break;
  //   }
  // }

  void _onItemSelected(index) {
    setState(() {
      switch (index) {
        case 0:
          _appBarText = "Favorites";
          break;
        case 1: 
          _appBarText =
              "${DateFormat('MM-dd').format((context.read<SelectedDate>().selectedDate))}";
          break;
        default:
          _appBarText = "Settings";
          break;
      }
    });
  }

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

  PersistentTabView MyPersistentTabView(context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(initialIndex: 1),
      onItemSelected: (index) {
        _onItemSelected(index);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarText),
      body: Container(
        child: MyPersistentTabView(context),
      ),
    );
  }
}
