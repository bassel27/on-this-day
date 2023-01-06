import 'package:flutter/material.dart';
import 'package:on_this_day/components/constants.dart';
import './components/info_cards_stack.dart';

class InfoDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: Container(
            color: kTabBarColor,
            child: const TabBar(
              indicatorColor: kTabBarIndicatorColor,
              tabs: <Tab>[
                Tab(text: "Births"),
                Tab(text: "Events"),
                Tab(text: "Deaths"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            InfoCardsStack(["Birth1", "Birth2"]),
            InfoCardsStack(["Event1", "Event2"]),
            InfoCardsStack(["Death1", "Death2"]),
          ],
        ),
      ),
    );
  }
}
