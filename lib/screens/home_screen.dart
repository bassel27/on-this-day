import 'package:flutter/material.dart';
import 'package:on_this_day/components/my_bottom_navigation_bar.dart';
import 'package:on_this_day/constants.dart';
import '../components/info_cards_stack.dart';

class InfoDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: Container(
            color: kTabBarColor,
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
            Column(
              children: [
                Expanded(
                  child: InfoCardsStack(["Birth1", "Birth2"]),
                ),
                SizedBox(height: 30),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: InfoCardsStack(["Event1", "Event2"]),
                ),
                SizedBox(height: 30),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: InfoCardsStack(["Death1", "Death2"]),
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
