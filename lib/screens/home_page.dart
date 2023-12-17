import 'package:flutter/material.dart';
import 'package:tour_guide/widgets/app_banner.dart';
import 'package:tour_guide/widgets/app_large_text.dart';
import 'package:tour_guide/widgets/app_text.dart';
import 'package:tour_guide/widgets/locations_pageview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  var _selectedIndex = 0;
  var _tabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabController _tabController1 = TabController(length: 4, vsync: this);
    TabController _tabController2 = TabController(length: 4, vsync: this);
    TabController _tabController3 = TabController(length: 4, vsync: this);

    return Scaffold(
        body: SafeArea(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: AppLargeText(text: "Natural Attractions"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                              labelPadding: const EdgeInsets.only(left: 20, right: 20),
                              controller: _tabController1,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.blueGrey,
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Theme.of(context).primaryColor,
                              tabs: [
                                Tab(child: AppText(text: "Beaches", size: 20,),),
                                Tab(child: AppText(text: "Parks", size: 20,),),
                                Tab(child: AppText(text: "Lakes", size: 20,),),
                                Tab(child: AppText(text: "Caves", size: 20,),),
                              ]
                          ),
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 300,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: _tabController1,
                        children: [
                          LocationPageView(listname: beachesList),
                          LocationPageView(listname: parksList),
                          LocationPageView(listname: lakesList),
                          LocationPageView(listname: cavesList),
                        ],
                      )
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: AppLargeText(text: "Cultural Attractions"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                              labelPadding: const EdgeInsets.only(left: 20, right: 20),
                              controller: _tabController2,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.blueGrey,
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Theme.of(context).primaryColor,
                              tabs: [
                                Tab(child: AppText(text: "Historical", size: 20,),),
                                Tab(child: AppText(text: "Spiritual", size: 20,),),
                                Tab(child: AppText(text: "Forts", size: 20,),),
                                Tab(child: AppText(text: "Museums", size: 20,),),
                              ]
                          ),
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 300,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: _tabController2,
                        children: [
                          LocationPageView(listname: historicalPlacesList),
                          LocationPageView(listname: spiritualPlacesList),
                          LocationPageView(listname: fortsList),
                          LocationPageView(listname: museumsList),
                        ],
                      )
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: AppLargeText(text: "Entertaining Attractions"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                              labelPadding: const EdgeInsets.only(left: 20, right: 20),
                              controller: _tabController3,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.blueGrey,
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Theme.of(context).primaryColor,
                              tabs: [
                                Tab(child: AppText(text: "Kids", size: 20,),),
                                Tab(child: AppText(text: "Bollywood", size: 20,),),
                                Tab(child: AppText(text: "Theme Parks", size: 20,),),
                                Tab(child: AppText(text: "Other Places", size: 20,),),
                              ]
                          ),
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 300,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: _tabController3,
                        children: [
                          LocationPageView(listname: kidsAreaList),
                          LocationPageView(listname: bollywoodSpotsList),
                          LocationPageView(listname: themeParksList),
                          LocationPageView(listname: otherPlacesList),
                        ],
                      )
                    ),
                    SizedBox(height: 20,),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 20),
                    //   child: AppLargeText(text: "Notable Events"),
                    // ),
                    // SizedBox(height: 10,),
                    // Container(
                    //   padding: const EdgeInsets.only(left: 20),
                    //   height: 300,
                    //   width: double.maxFinite,
                    //   child: ListView.builder(
                    //     itemCount: 4,
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return Container(
                    //         margin: const EdgeInsets.only(right: 15, top: 10),
                    //         width: 200,
                    //         height: 300,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(20),
                    //             color: Colors.white,
                    //             image: DecorationImage(
                    //                 image: AssetImage("assets/csmt.jpg"),
                    //                 fit: BoxFit.cover
                    //             )
                    //         ),
                    //       );
                    //     }
                    //   ),
                    // ),
                    // SizedBox(height: 20,),
                  ]
              ),
            )
        )
    );
  }
}
