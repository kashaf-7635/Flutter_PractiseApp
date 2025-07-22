import 'package:flutter/material.dart';

class ClipRRectScreen extends StatefulWidget {
  @override
  State<ClipRRectScreen> createState() => _ClipRRectScreenState();
}

class _ClipRRectScreenState extends State<ClipRRectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clip RRect & Gradient',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [Color(0xff84fab0), Color(0xff8fd3f4), Color(0xff30cfd0)],
          //   begin: FractionalOffset(1.0, 0.5),
          //   end: FractionalOffset(0.0, 0.5),
          //   stops: [0.0, 0.4, 1.0],
          // ),
          gradient: RadialGradient(
            center: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 242, 246, 4),
              Color.fromARGB(255, 235, 162, 45),
              Color(0xff30cfd0),
            ],
          ),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(71),
              topRight: Radius.circular(21),
              bottomLeft: Radius.circular(21),
              bottomRight: Radius.circular(21),
            ),
            child: Image.asset(
              'assets/images/kit.png',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
