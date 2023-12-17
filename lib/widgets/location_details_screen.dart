// import 'package:flutter/material.dart';
// import 'package:tour_guide/widgets/app_banner.dart';
// import 'package:tour_guide/widgets/app_large_text.dart';
// import 'package:tour_guide/widgets/app_text.dart';
//
// class LocationDetailsScreen extends StatefulWidget {
//   const LocationDetailsScreen({ Key? key, required this.appBanner }) : super(key: key);
//
//   final AppBanner appBanner;
//
//   @override
//   State<LocationDetailsScreen> createState() => _LocationDetailsScreenState();
// }
//
// class _LocationDetailsScreenState extends State<LocationDetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               height: 350,
//               decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.only(
//                 //   bottomLeft: Radius.circular(40),
//                 //   bottomRight: Radius.circular(40)
//                 // ),
//                 image: DecorationImage(
//                   image: AssetImage("assets/"+widget.appBanner.thumbnail),
//                   fit: BoxFit.fill,
//                 )
//               ),
//             ),
//             Positioned(
//               top: 20,
//               left: 15,
//               child: TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 child: CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Colors.white,
//                   child: Icon(
//                     Icons.arrow_back,
//                     color: Colors.black,),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 325,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 500,
//                 decoration: BoxDecoration(
//                   color: Colors.amber,
//                   // color: Theme.of(context).scaffoldBackgroundColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30),
//                   ),
//                 ),
//                 child: ListView(
//                   physics: BouncingScrollPhysics(),
//                   children: [
//
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }