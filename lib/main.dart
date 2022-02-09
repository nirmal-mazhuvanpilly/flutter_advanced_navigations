import 'package:flutter/material.dart';
import 'package:naviagtion_named_routes/routes.dart';
import 'package:naviagtion_named_routes/routes_names.dart';
import 'package:naviagtion_named_routes/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.initialRoute,
      onGenerateRoute: Routes.generateRoute,
      home: Screen1(),
    );
  }
}
