import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/screens/3dlist_screen.dart';
import 'package:myapp/screens/clip_rrect.dart';
import 'package:myapp/screens/input_screen.dart';
import 'package:myapp/screens/intro_screen.dart';
import 'package:myapp/screens/ripple_effect_animation.dart';
import 'package:myapp/screens/tween_animation.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RippleEffectAnimation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Classico',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 34,
            ),
          ),
        ),
      ),
    );
  }
}
