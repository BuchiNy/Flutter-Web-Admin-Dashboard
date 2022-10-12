import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../constants/controllers.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const VerticalMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      onHover: (value){
        value ?
        menuController.onHover(itemName) :
        menuController.onHover("Not hovering");
      },
        child: Obx( () =>
              Container(
          color: menuController.isHovering(itemName) ?
          lightGrey.withOpacity(.1) : Colors.transparent,
          child: Row(
            children: [
              Visibility(visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: darke,
                ),
                ),
              Expanded(child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
              ))
              ],
            ),
          )
        )
    );
  }
}
