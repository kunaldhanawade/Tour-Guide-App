import 'package:flutter/material.dart';
import 'package:tour_guide/widgets/about_mumbai.dart';
import 'package:tour_guide/widgets/app_large_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3 + 30,
            child: Stack(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height / 3),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage("assets/mumbai2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 50,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Center(
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      child: AppLargeText(
                        text: "Mumbai, The City of Dreams",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Info(list: info[0]),
          Info(list: info[1]),
          Info(list: info[2]),
          Info(list: info[3]),
          Info(list: info[4]),
          Info(list: info[5]),
          Info(list: info[6]),
          Info(list: info[7]),
          Info(list: info[8]),


        ],
      ),
    );
  }
}
