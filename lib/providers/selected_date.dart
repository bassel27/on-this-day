import 'package:flutter/material.dart';

class SelectedDate with ChangeNotifier {
  DateTime _selectedDate = DateTime.now();

  DateTime get selectedDate => _selectedDate;

  void set selectedDate(DateTime newDate) {
    _selectedDate = newDate;
    notifyListeners();
  }

  void set day(newDateTime) {
    _selectedDate =
        DateTime.utc(_selectedDate.year, _selectedDate.month, newDateTime.day);
    notifyListeners();
  }
}
