import 'package:flutter/material.dart';

import 'package:tour_guide/widgets/shop_eat.dart';

class ShopAndEatPage extends StatelessWidget {
  const ShopAndEatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: "Food",),
                Tab(text: "Shopping",),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        OneCard(listname: Food[0]),
                        OneCard(listname: Food[1]),
                        OneCard(listname: Food[2]),
                        OneCard(listname: Food[3]),
                        OneCard(listname: Food[4]),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        OneCard(listname: Shopping[0]),
                        OneCard(listname: Shopping[1]),
                        OneCard(listname: Shopping[2]),
                        OneCard(listname: Shopping[3]),
                        OneCard(listname: Shopping[4]),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
