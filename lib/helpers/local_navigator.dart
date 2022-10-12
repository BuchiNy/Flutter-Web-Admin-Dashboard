import 'package:admin/constants/controllers.dart';
import 'package:admin/routes/routes.dart';
import 'package:flutter/widgets.dart';

import '../routes/router.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationkey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);