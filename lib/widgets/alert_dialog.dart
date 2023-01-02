import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';

class MyAlertDialog extends StatefulWidget {
  @override
  State<MyAlertDialog> createState() => My_AlertDialogState();
}

class My_AlertDialogState extends State<MyAlertDialog> {
  var _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: MonthPicker.single(
          selectedDate: _selectedDate,
          onChanged: (pickedDate) {
            setState(() {
              _selectedDate = pickedDate;
            });
          },
          firstDate: DateTime(DateTime.now().year, 1),
          lastDate: DateTime(DateTime.now().year, 12)),
    );
    ;
  }
}
