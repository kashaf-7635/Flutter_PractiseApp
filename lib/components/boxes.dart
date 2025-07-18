import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

class BoxesCmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 300,
      width: double.infinity,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(onPressed: () {}, child: Text('Click')),
          ),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text('Click')),
          ),
        ],
      ),
    );
  }
}
