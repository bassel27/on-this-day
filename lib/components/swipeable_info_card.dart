import 'package:flutter/material.dart';

class SwipeableQuoteCard extends StatelessWidget {
  final String _information;

  SwipeableQuoteCard(this._information);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 2),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 118, 113, 113),
            blurRadius: 4,
            offset: Offset(2, 2), // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Text(
                    _information,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
