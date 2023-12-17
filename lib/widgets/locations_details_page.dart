import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_guide/widgets/app_banner.dart';
import 'package:tour_guide/widgets/app_large_text.dart';
import 'package:tour_guide/widgets/app_text.dart';
import 'package:url_launcher/link.dart';

class LocationDetailsPage extends StatefulWidget {
  const LocationDetailsPage({ Key? key, required this.appBanner }) : super(key: key);

  final AppBanner appBanner;

  @override
  State<LocationDetailsPage> createState() => _LocationDetailsPageState();
}

class _LocationDetailsPageState extends State<LocationDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height/3+100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/"+widget.appBanner.thumbnail),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,),
                ),
              ),
            ),
            Flexible(
              child: Positioned(
                top: 300,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height) - 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: widget.appBanner.title.toUpperCase()),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(width: 5,),
                              AppText(
                                text: widget.appBanner.location,
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          AppLargeText(
                            text: "Description",
                            color: Colors.black87,
                            size: 20,
                          ),
                          SizedBox(height: 5,),
                          AppText(text: widget.appBanner.description),
                          SizedBox(height: 20,),
                          AppLargeText(
                            text: "Timing",
                            color: Colors.black87,
                            size: 20,
                          ),
                          SizedBox(height: 5,),
                          AppText(text: widget.appBanner.timing),
                          SizedBox(height: 20,),
                          AppLargeText(
                            text: "Entry Fees",
                            color: Colors.black87,
                            size: 20,
                          ),
                          SizedBox(height: 5,),
                          AppText(text: widget.appBanner.entryfee),
                          SizedBox(height: 30,),
                        ],
                      ),
                    ],
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}