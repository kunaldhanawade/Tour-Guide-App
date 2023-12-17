import 'package:flutter/material.dart';
import 'package:tour_guide/screens/home_page.dart';
import 'package:tour_guide/screens/activities_page.dart';
import 'package:tour_guide/screens/about_page.dart';
import 'package:tour_guide/screens/shop_eat_page.dart';
import 'package:tour_guide/screens/travel_guide_page.dart';
import 'package:tour_guide/widgets/navigation_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    HomePage(),
    ActivitiesPage(),
    ShopAndEatPage(),
    AboutPage(),
    TravelGuidePage(),
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Mumbai Tour Guide App"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // selectedFontSize: 0,
        unselectedFontSize: 0,
        // type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.attractions), label: "Attractions"),
          BottomNavigationBarItem(icon: Icon(Icons.hiking), label: "Activities"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Shop & Eat"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About Mumbai"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Travel Guide"),
        ],
      ),
    );
  }
}
