import 'package:admin/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsiveness.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Obx(() => Row(
            children: [
              Container(
                margin: EdgeInsets.only(top:
                ResponsiveWidget.isSmallScreen(context) ? 56 : 6, left: 10
                ),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ))
        ]
    );
  }
}
