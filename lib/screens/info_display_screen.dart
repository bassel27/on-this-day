import 'package:flutter/material.dart';
import 'package:on_this_day/constants.dart';
import '../widgets/info_cards_stack.dart';

class InfoDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: Container(
            color: Theme.of(context).primaryColorDark,
            child: TabBar(
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
          physics: NeverScrollableScrollPhysics(),
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
