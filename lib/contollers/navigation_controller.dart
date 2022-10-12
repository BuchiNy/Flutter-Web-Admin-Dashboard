import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigationkey = GlobalKey();

  Future<dynamic>? navigateTo (String routeName) {
    return navigationkey.currentState?.pushNamed(routeName);
  }

  goBack() => navigationkey.currentState?.pop();
}