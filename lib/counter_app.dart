import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyCounterApp());
}

class MyCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      home: CounterHomePage(),
    );
  }
}

class CounterHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CounterHomeState();
}

class CounterHomeState extends State<CounterHomePage> {
  int _count = 0;

  int _increment() {
    return _count++;
  }

  int _decrement() {
    if (_count == 0) return 0;
    return _count--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: $_count', style: TextStyle(fontSize: 34)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _increment();
                    });
                  },
                  child: FaIcon(FontAwesomeIcons.plus),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _decrement();
                    });
                  },
                  child: FaIcon(FontAwesomeIcons.minus),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
