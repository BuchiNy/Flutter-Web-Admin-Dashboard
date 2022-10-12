import 'package:flutter/material.dart';


const int largescreenSize = 1366;
const int mediumscreenSize = 768;
const int smallscreenSize = 360;
const int customscreenSize = 1100;



class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget customScreen;

  const ResponsiveWidget({Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
    required this.customScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumscreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumscreenSize &&
          MediaQuery.of(context).size.width < largescreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largescreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumscreenSize &&
  MediaQuery.of(context).size.width <= customscreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      double _width = constraints.maxWidth;
      if(_width >= largescreenSize){
        return largeScreen;
      }
      else if (_width < largescreenSize && _width >= mediumscreenSize){
        return mediumScreen;
      }
      else {
        return smallScreen ;
      }
    });
  }
}
