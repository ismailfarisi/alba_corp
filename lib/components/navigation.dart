import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget page) {
  Navigator.push(
      context,
      PageRouteBuilder(
          pageBuilder: (context, anim1, anim2) {
            return page;
          },
          transitionsBuilder: (context, anim1, anim2, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeInCubic)).animate(anim1),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 300)));
}
