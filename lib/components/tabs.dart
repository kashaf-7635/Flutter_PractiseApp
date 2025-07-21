import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

class TabCmp extends StatelessWidget {
  const TabCmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('Places', style: mTextStyle16())),
        Expanded(
          child: Text(
            'Inspiration',
            style: mTextStyle16(textColor: Colors.grey),
          ),
        ),
        Expanded(
          child: Text('Emotions', style: mTextStyle16(textColor: Colors.grey)),
        ),
      ],
    );
  }
}
