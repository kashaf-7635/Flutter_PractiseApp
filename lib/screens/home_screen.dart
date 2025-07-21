import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Center(
          child: RangeSlider(
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade100,
            values: values,
            labels: labels,
            divisions: 20,
            min: 0,
            max: 100,
            onChanged: (newVal) {
              values = newVal;
              print('${newVal.start}, ${newVal.end}');
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
