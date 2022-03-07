import 'package:flutter/material.dart';
import 'package:naviagtion_named_routes/arguments.dart';
import 'package:naviagtion_named_routes/routes.dart';
import 'package:naviagtion_named_routes/routes_names.dart';

class NavToRoutes {
  static navPop(BuildContext context) {
    Navigator.of(context).pop();
  }

  static navToScreen2(BuildContext context, String greet, String name) {
    Navigator.pushNamed(context, RouteNames.secondRoute,
        arguments: Arguments(greet: greet, name: name));
  }

  static navToScreen3(BuildContext context, String greet, String name) {
    Navigator.pushNamed(context, RouteNames.thirdRoute,
        arguments: Arguments(greet: greet, name: name));
  }

  static navToScreen4(String greet, String name) {
    Routes.navigatorKey.currentState?.pushNamed(RouteNames.fourthRoute,
        arguments: Arguments(greet: greet, name: name));
  }
}
