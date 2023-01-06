import 'package:flutter/material.dart';
import 'info_card.dart';
import 'package:appinio_swiper/appinio_swiper.dart';

// Note that this package removes last element form the array with each swipe

class InfoCardsStack extends StatelessWidget {
  final List<InfoCard> _swipeableCards = [];
  final List<String> infoList;
  //TODO: remove logic from constructor
  InfoCardsStack(this.infoList);

  @override
  Widget build(BuildContext context) {
    return AppinioSwiper(
      maxAngle: 45,
      // ignore: prefer_const_constructors
      padding: EdgeInsets.fromLTRB(6, 6, 6, 15),
      cards: infoList.map(
        (info) {
          return InfoCard(info);
        },
      ).toList(),
      duration: const Duration(milliseconds: 150),
    );
  }
}
