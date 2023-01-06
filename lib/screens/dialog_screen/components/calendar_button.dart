import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const CalendarButton({required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
      child: OutlinedButton(
        onPressed: onPressed,
        child: child,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: Size.zero, // Set this
          padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 13), // and this
        ),
      ),
    );
  }
}
