import 'package:admin/helpers/responsiveness.dart';
import 'package:admin/widget/custom_screen.dart';
import 'package:admin/widget/large_screen.dart';
import 'package:admin/widget/medium_screen.dart';
import 'package:admin/widget/side_menu.dart';
import 'package:admin/widget/small_screen.dart';
import 'package:admin/widget/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer( child: SideMenu(),),
      body: const ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(), customScreen: CustomScreen() , mediumScreen: MediumScreen(),),
    );
  }
}
