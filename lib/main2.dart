import 'package:flutter/material.dart';
import 'package:myapp/main1.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFirstApp',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Color>? arrColors = [
      Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid View',
          style: TextStyle(color: Colors.white, fontFamily: 'FontMain'),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(color: arrColors[0]),
                Container(color: arrColors[1]),
                Container(color: arrColors[2]),
                Container(color: arrColors[3]),
                Container(color: arrColors[4]),
                Container(color: arrColors[5]),
                Container(color: arrColors[6]),
                Container(color: arrColors[7]),
              ],
            ),
          ),
          Container(height: 20),
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 150,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              children: [
                Container(color: arrColors[0]),
                Container(color: arrColors[1]),
                Container(color: arrColors[2]),
                Container(color: arrColors[3]),
                Container(color: arrColors[4]),
                Container(color: arrColors[5]),
                Container(color: arrColors[6]),
                Container(color: arrColors[7]),
              ],
            ),
          ),
          Container(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
              ),
              itemCount: arrColors.length,
              itemBuilder: (context, index) {
                return Container(color: arrColors[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
