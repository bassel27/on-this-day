import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text child;

  const CalendarButton({required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
      child: TextButton(
        onPressed: onPressed,
        child: child,
        style: OutlinedButton.styleFrom(
          minimumSize: Size.zero, // Set this
          padding: const EdgeInsets.symmetric(
              vertical: 8, horizontal: 8), // and this
        ),
      ),
    );
  }
}
