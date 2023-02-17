import 'package:flutter/material.dart';

class SelectedDate with ChangeNotifier {
  DateTime _selectedDate = DateTime.now();
  late DateTime _probableDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;
  DateTime get possibleDate => _probableDate;

  /// The date isn't final if the user presses cancel or until the user presses ok.
  void set possibleDate(DateTime newDate) {
    _probableDate = newDate;
    // notifyListeners();
  }

  void set day(newDateTime) {
    _probableDate =
        DateTime.utc(_probableDate.year, _probableDate.month, newDateTime.day);
    // notifyListeners();
  }

  /// Notifies listeners (appBar) to update date
  void updateAppBar() {
    _selectedDate = _probableDate;
    notifyListeners();
  }
}
