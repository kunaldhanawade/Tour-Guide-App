import 'package:flutter/material.dart';
import 'package:tour_guide/widgets/banner_item.dart';
import 'package:tour_guide/widgets/indicator.dart';

class LocationPageView extends StatefulWidget {
  const LocationPageView({ Key? key, required this.listname }) : super(key: key);
  final List listname;

  @override
  State<LocationPageView> createState() => _LocationPageViewState();
}

class _LocationPageViewState extends State<LocationPageView> {
  @override
  var _selectedIndex = 0;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 225,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 1 ),
                itemCount: widget.listname.length,
                itemBuilder: (context, index) {
                  var banner = widget.listname[index];
                  var _scale = _selectedIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                    tween: Tween(begin: _scale, end: _scale),
                    duration: const Duration(milliseconds: 350),
                    curve:  Curves.linear,
                    builder: (context, double _value, child){
                      return Transform.scale(scale: _value, child: child,);
                    },
                    child: BannerItem(appBanner: banner)
                  );
                },
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                widget.listname.length, 
                (index) => Indicator(isActive: _selectedIndex == index ? true : false),
              )
            ],
          )
        ], 
      ),
    );
  }
}