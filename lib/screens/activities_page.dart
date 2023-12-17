import 'package:flutter/material.dart';
import 'package:tour_guide/widgets/app_large_text.dart';
import 'package:tour_guide/widgets/activities.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: "Events",),
                Tab(text: "Festivals",),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OneEvent(list: Events),
                  OneEvent(list: Festivals),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

