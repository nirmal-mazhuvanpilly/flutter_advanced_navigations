import 'package:flutter/material.dart';

class NavToPage extends PageRouteBuilder {
  final Widget page;
  NavToPage({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
            scale: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn,
            )),
            child: child,
          ),
        );
}
