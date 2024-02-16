import 'package:flutter/material.dart';

class Fade extends PageRouteBuilder{
  final Widget page;
  Fade(this.page):super(
    pageBuilder: (
      BuildContext context,
      Animation<double> AnimationI, 
      Animation<double> AnimationII)=> page ,

    transitionsBuilder:(
      BuildContext context,
      Animation<double> AnimationI,
      Animation<double> AnimationII,
      Widget child )=> FadeTransition(opacity: AnimationI,child: child,),

      transitionDuration: const Duration(milliseconds: 1500)
  );

}