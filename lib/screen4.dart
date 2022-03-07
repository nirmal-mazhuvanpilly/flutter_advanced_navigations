import 'package:flutter/material.dart';
import 'package:naviagtion_named_routes/nav_to_routes.dart';

class Screen4 extends StatelessWidget {
  final String? name;
  final String? greet;

  const Screen4({Key? key, this.greet, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$greet $name"),
            ElevatedButton(
              child: const Text("Goto Screen3"),
              onPressed: () {
                NavToRoutes.navPop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
