import 'package:admin/widget/horizontal_menu.dart';
import 'package:admin/widget/vertical.dart';
import 'package:flutter/material.dart';

import '../helpers/responsiveness.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
