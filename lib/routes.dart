import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naviagtion_named_routes/arguments.dart';
import 'package:naviagtion_named_routes/nav_to_page.dart';
import 'package:naviagtion_named_routes/routes_names.dart';
import 'package:naviagtion_named_routes/screen1.dart';
import 'package:naviagtion_named_routes/screen2.dart';
import 'package:naviagtion_named_routes/screen3.dart';
import 'package:naviagtion_named_routes/screen4.dart';

class Routes {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const Screen1(),
        );
      case RouteNames.secondRoute:
        Arguments args = settings.arguments as Arguments;
        return MaterialPageRoute(
          builder: (_) => Screen2(
            greet: args.greet,
            name: args.name,
          ),
        );
      case RouteNames.thirdRoute:
        Arguments args = settings.arguments as Arguments;
        return NavToPage(
            page: Screen3(
          greet: args.greet,
          name: args.name,
        ));
      case RouteNames.fourthRoute:
        Arguments args = settings.arguments as Arguments;
        return MaterialPageRoute(
          builder: (_) => Screen4(
            greet: args.greet,
            name: args.name,
          ),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
