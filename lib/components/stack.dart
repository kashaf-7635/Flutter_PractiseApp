import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';
import 'package:myapp/widgets/rounded_button.dart';

class StackCmp extends StatelessWidget {
  const StackCmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      color: Colors.red,
      child: Stack(
        children: [
          Container(width: 200, height: 200, color: Colors.blueGrey),
          Positioned(
            top: 21,
            left: 21,
            child: Container(width: 200, height: 200, color: Colors.grey),
          ),

          Positioned(
            bottom: 50,
            left: 50,
            child: RoundedButton(
              btnName: 'Login',
              icon: Icon(Icons.lock, color: Colors.white),
              callBack: () {
                print('Clicked');
              },
              textStyle: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            top: 50,
            right: 50,
            child: RoundedButton(
              btnName: 'Signup',
              icon: Icon(Icons.new_label, color: Colors.white),
              callBack: () {
                print('Clicked');
              },
              textStyle: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
