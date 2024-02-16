import 'package:flutter/material.dart';

class ScaleRotate extends PageRouteBuilder{
  final Widget page;
  ScaleRotate(this.page):super(
    pageBuilder: (
        BuildContext context, 
        Animation<double> AnimationI, 
        Animation<double> AnimationII
      )=>page,

      transitionDuration: const Duration(seconds: 2),

      transitionsBuilder: (
          BuildContext context, 
          Animation<double> AnimationI, 
          Animation<double> AnimationII,
          Widget child,
        )=>RotationTransition(
          turns: Tween(begin: 0.0 , end: 4.0).animate(CurvedAnimation(parent: AnimationI, curve: Curves.easeInOut)),
          child: ScaleTransition(
              scale: Tween(begin: 0.0 ,end: 1.0).animate(CurvedAnimation(parent: AnimationI, curve: Curves.linear)),
              child: child,
            ),
        )
  );

}
