import 'package:admin/widget/side_menu.dart';
import 'package:flutter/material.dart';

import '../helpers/local_navigator.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
     const Expanded(child: SideMenu(
        )),
        Expanded(
            flex: 5,
            child: localNavigator()
        )
      ],
    );
  }
}
