import 'package:admin/routes/routes.dart';
import 'package:flutter/material.dart ';
import 'package:get/get.dart';

import '../constants/style.dart';

class MenuController extends GetxController{
  static MenuController instance = Get.find();
  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
}

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName){
    switch(itemName){
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case UserPageRoute:
        return _customIcon(Icons.person, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.fire_truck, itemName);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)) return Icon(icon, size: 22, color: darke,);

    return Icon(icon, color: isHovering(itemName) ? darke : lightGrey,);

  }
}