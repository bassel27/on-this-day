import 'package:flutter/material.dart';

class AppBarTitle with ChangeNotifier {
  Widget _widget;

  AppBarTitle(this._widget);

  set widget(Widget widget) {
    _widget = widget;
    notifyListeners();
  }

  Widget get widget => _widget;
}
