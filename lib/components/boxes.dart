import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';

class BoxesCmp extends StatelessWidget {
  const BoxesCmp({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 200,
        maxWidth: 300,
        maxHeight: 300,
        minHeight: 100,
      ),
      child: ElevatedButton(onPressed: () {}, child: Text('Button')),
    );
  }
}
