import 'package:admin/constants/controllers.dart';
import 'package:admin/pages/Overviewpage/widgets/large.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/responsiveness.dart';
import '../../widget/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Obx(() => Row(
         children: [
           Container(
             margin: EdgeInsets.only(top:
                 ResponsiveWidget.isSmallScreen(context) ? 56 : 6,left: 10
             ),
             child: CustomText(
               text: menuController.activeItem.value,
               size: 24,
               weight: FontWeight.bold,
               color: Colors.black,
             ),
           )
         ],
       )),
        Expanded(
          child: ListView(
          children: const [
            OverViewCardLarge()
          ],
        ),)
      ]
    );
  }
}
