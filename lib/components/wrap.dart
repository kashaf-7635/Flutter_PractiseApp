import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

class WrapCmp extends StatelessWidget {
  const WrapCmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 11,
      runSpacing: 11,
      alignment: WrapAlignment.spaceEvenly,
      children: [
        Container(height: 100, width: 100, color: Colors.green),
        Container(height: 100, width: 100, color: Colors.red),
        Container(height: 100, width: 100, color: Colors.blue),
        Container(height: 100, width: 100, color: Colors.purple),
        Container(height: 100, width: 100, color: Colors.pink),
        Container(height: 100, width: 100, color: Colors.amber),
        Container(height: 100, width: 100, color: Colors.greenAccent),
        Container(height: 100, width: 100, color: Colors.green),
        Container(height: 100, width: 100, color: Colors.red),
        Container(height: 100, width: 100, color: Colors.blue),
        Container(height: 100, width: 100, color: Colors.purple),
        Container(height: 100, width: 100, color: Colors.pink),
        Container(height: 100, width: 100, color: Colors.amber),
        Container(height: 100, width: 100, color: Colors.greenAccent),
      ],
    );
  }
}
