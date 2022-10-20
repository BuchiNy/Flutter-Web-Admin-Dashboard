import 'dart:js';

import 'package:admin/routes/routes.dart';
import 'package:flutter/material.dart';

import '../pages/Authentication/authentication.dart';
import '../pages/Overviewpage/overviewpage.dart';
import '../pages/Prisoner_Details/prisoner_details.dart';
import '../pages/Profile/profile.dart';
import '../pages/Transfers/transfers.dart';



Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case UserPageRoute:
      return _getPageRoute(const Profile());
    case DriversPageRoute:
      return _getPageRoute(const Transfer());
    case ClientsPageRoute:
      return _getPageRoute(const PrisonerDetails());
    case AuthenticationPageRoute:
      return _getPageRoute(const Authentication());
    default:
      return _getPageRoute(const Profile());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}