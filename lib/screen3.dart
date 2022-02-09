import 'package:flutter/material.dart';
import 'package:naviagtion_named_routes/nav_to_routes.dart';

class Screen3 extends StatelessWidget {
  final String? name;
  final String? greet;

  const Screen3({Key? key, this.greet, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$greet $name"),
            ElevatedButton(
              child: const Text("Goto Screen2"),
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
