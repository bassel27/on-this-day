import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';
import './components/info_cards_stack.dart';

class InfoDisplayScreen extends StatelessWidget {
  final TabBarView scaffoldBody = TabBarView(
    physics: const NeverScrollableScrollPhysics(),
    children: [
      InfoCardsStack(["Birth1", "Birth2"]),
      InfoCardsStack(["Event1", "Event2"]),
      InfoCardsStack(["Death1", "Death2"]),
    ],
  );

  List<Tab> tabsList = ["Births", "Events", "Deaths"]
      .map((textItem) => Tab(text: textItem))
      .toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: Container(
            color: kBarsColor,
            child: TabBar(
              indicatorColor: kActiveLabelColor,
              tabs: tabsList,
            ),
          ),
        ),
        backgroundColor: kPrimaryColor2,
        body: scaffoldBody,
      ),
    );
  }
}
