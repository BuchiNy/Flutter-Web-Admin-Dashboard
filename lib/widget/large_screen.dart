import 'package:admin/widget/side_menu.dart';
import 'package:flutter/material.dart';

import '../helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu(
        )),
        Expanded(
            flex: 5,
            child: localNavigator()
        )
      ],
    );
  }
}
