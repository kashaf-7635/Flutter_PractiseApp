import 'package:flutter/material.dart';
import 'package:myapp/screens/splash_screen.dart';

void main() {
  runApp(MulScreenApp());
}

class MulScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MulScreenApp',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
