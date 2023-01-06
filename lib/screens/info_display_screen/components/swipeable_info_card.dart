import 'package:flutter/material.dart';

class SwipeableInfoCard extends StatelessWidget {
  final String _information;

  const SwipeableInfoCard(this._information);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(color: const Color(0XFFBDBDBD), width: 3),
        boxShadow: [
          const BoxShadow(
            color: Color(0xFF757575),
            blurRadius: 4,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
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
