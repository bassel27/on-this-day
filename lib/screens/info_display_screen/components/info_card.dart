import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';

class InfoCard extends StatelessWidget {
  final String _information;

  const InfoCard(this._information);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimaryColor,
        border: Border.all(color: kPrimaryColor2, width: 3),
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
