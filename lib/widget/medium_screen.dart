import 'package:admin/helpers/local_navigator.dart';
import 'package:admin/widget/side_menu.dart';
import 'package:flutter/material.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

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
