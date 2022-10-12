import 'package:admin/constants/controllers.dart';
import 'package:admin/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {

  final String itemName;
  final Function onTap;
  const HorizontalMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => onTap(),
      onHover: (value){
        value ?
            menuController.onHover(itemName) :
            menuController.onHover("Not hovering");
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName) ?
            lightGrey.withOpacity(.1) : Colors.transparent,
        child: Row(
          children: [
            Visibility(visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
              child: Container(
                width: 6,
                height: 40,
                color: darke,
                ),
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
            ),
            SizedBox(
              width: _width/80,
            ),
            Padding(padding: EdgeInsets.all(16),
              child: menuController.returnIconFor(itemName),
            ),
            if(!menuController.isActive(itemName))
              Flexible(child:CustomText(
                weight: FontWeight.w600,
                size: 18,
                text: itemName, 
                color: menuController.isHovering(itemName) ? darke : lightGrey,
              ))
            else
              Flexible(child: CustomText(
                size: 18,
                weight: FontWeight.bold,
                text: itemName,
                color: darke,
              ))
          ],
        ),
      )),
    );
  }
}
