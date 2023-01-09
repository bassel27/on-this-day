import 'package:flutter/material.dart';
import 'components/my_app_bar.dart';
import 'package:provider/provider.dart';
import '../../../providers/selected_date.dart';
import 'package:intl/intl.dart';
import './components/my_persistent_tab_view.dart';

class BottomNavigationBarPersistentScreen extends StatefulWidget {
  @override
  State<BottomNavigationBarPersistentScreen> createState() =>
      _BottomNavigationBarPersistentScreenState();
}

class _BottomNavigationBarPersistentScreenState
    extends State<BottomNavigationBarPersistentScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        child: MyPersistentTabView(),
      ),
    );
  }
}
