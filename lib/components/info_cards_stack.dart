import 'package:flutter/material.dart';
import 'swipeable_info_card.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';

// Note that this package removes last element form the array with each swipe

class InfoCardsStack extends StatelessWidget {
  static late List<SwipeableQuoteCard> _swipeableCards = [];
  final List<String> infoList;
  InfoCardsStack(this.infoList) {
    for (String info in infoList) {
      _swipeableCards.add(SwipeableQuoteCard(info));
    }
    _swipeableCards.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    print(_swipeableCards.length);
    return AppinioSwiper(
      maxAngle: 45,
      padding: EdgeInsets.fromLTRB(6, 6, 6, 15),
      cards: _swipeableCards,
      duration: Duration(milliseconds: 150),
    );
  }
}
