import 'package:flutter/material.dart';

class HeaderCmp extends StatelessWidget {
  const HeaderCmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.pink.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => print('Menu Pressed'),
            icon: Icon(Icons.menu_outlined),
          ),
          InkWell(
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/4333/4333609.png',
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
