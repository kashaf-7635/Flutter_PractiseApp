import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

class GalleryCmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 21),
      decoration: BoxDecoration(),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.pexels.com/photos/1666012/pexels-photo-1666012.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
