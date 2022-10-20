import 'package:flutter/material.dart';

import '../../../widget/card_info.dart';

class OverViewCardLarge extends StatelessWidget {
  const OverViewCardLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        CardInfo(
          title: "Transfers in progress",
          value: "10",
          onTap: (){},
          topColor: Colors.orangeAccent,
          isActive: false,
        ),
        SizedBox(
          width: _width / 64,
        ),
        CardInfo(
          title: "Number of Prioners",
          value: "250",
          onTap: (){},
          topColor: Colors.cyan,
          isActive: false,
        ),
        SizedBox(
          width: _width / 64,
        ),
        CardInfo(
          title: "number of staff",
          value: "50",
          onTap: (){},
          topColor: Colors.green,
          isActive: false,
        ),
        SizedBox(
          width: _width / 64,
        ),
        CardInfo(
          title: "number of staff",
          value: "50",
          onTap: (){},
          topColor: Colors.green,
          isActive: false,
        ),
        SizedBox(
          width: _width / 64,
        ),
      ],
    );
  }
}
