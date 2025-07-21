import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

class ListItemsCmp extends StatelessWidget {
  const ListItemsCmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 11.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Explore more', style: headingTextStyle2()),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: mTextStyle16(textColor: Colors.grey),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.games, color: Colors.pink),
                      ),
                      Text('Balloting'),
                    ],
                  ),
                );
              },
              itemCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}
