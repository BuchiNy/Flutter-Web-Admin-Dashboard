import 'package:admin/routes/routes.dart';
import 'package:admin/widget/custom_text.dart';
import 'package:admin/widget/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width/48
                    ),
                    Padding(padding: const EdgeInsets.only(right:12),
                    child: Icon(Icons.local_police_outlined),
                    ),
                    Flexible(child: CustomText(
                      text: "Primis",
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    ),
                    ),
                  ],
                ),
              ],
            ),
          SizedBox(
              width: _width/48
          ),

          Divider(color: lightGrey.withOpacity(.1),),

          Column(
            mainAxisSize: MainAxisSize.min,
            children:
            sideMenuItems.map((itemName) => SideMenuItem(
              itemName: itemName == AuthenticationPageRoute ? "Log out" : itemName,
              onTap: (){
                if(itemName == AuthenticationPageRoute){
                  //TODO:: go to authentication
                }
                if(!menuController.isActive(itemName)){
                  menuController.changeActiveitemTo(itemName);
                  if(ResponsiveWidget.isSmallScreen(context))
                    Get.back();
                  //TODO:: go to item name Route
                  navigationController.navigateTo(itemName);
                }
              },
            )).toList(),
          ),
        ]
      )
    );
  }
}
