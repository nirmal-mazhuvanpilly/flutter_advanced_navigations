import 'package:flutter/material.dart';
import 'package:naviagtion_named_routes/nav_to_routes.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Goto Screen2"),
          onPressed: () {
            NavToRoutes.navToScreen2(context, "Hi", "Nirmal");
          },
        ),
      ),
    );
  }
}
