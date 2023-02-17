import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';

import './components/info_cards_stack.dart';

class InfoDisplayScreen extends StatelessWidget {
  final TabBarView scaffoldBody = TabBarView(
    physics: const NeverScrollableScrollPhysics(),
    children: [
      InfoCardsStack([
        "Birth should be put here\n I haven't set up the API yet",
        "Birth should be put here\n I haven't set up the API yet"
      ]),
      InfoCardsStack([
        "Event should be put here\n I haven't set up the API yet",
        "Event should be put here\n I haven't set up the API yet"
      ]),
      InfoCardsStack([
        "Death should be put here\n I haven't set up the API yet",
        "Death should be put here\n I haven't set up the API yet"
      ]),
    ],
  );

  final List<Tab> tabsList = ["Births", "Events", "Deaths"]
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
