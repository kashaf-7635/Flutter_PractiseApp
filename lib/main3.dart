import 'package:flutter/material.dart';
import 'package:myapp/components/boxes.dart';
import 'package:myapp/components/gallery.dart';
import 'package:myapp/components/header.dart';
import 'package:myapp/components/listItems.dart';
import 'package:myapp/components/stack.dart';
import 'package:myapp/components/tabs.dart';
import 'package:myapp/components/wrap.dart';
import 'package:myapp/ui_helper/util.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
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
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  callback() {
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Widgets/Components',
          style: TextStyle(color: Colors.white, fontFamily: 'FontMain'),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 16.0,
          right: 16.0,
          bottom: 40.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderCmp(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8.0, bottom: 9.0),
                    child: Text('Discover', style: headingTextStyle()),
                  ),
                ],
              ),

              TabCmp(),
              GalleryCmp(),
              ListItemsCmp(),
              StackCmp(),
              WrapCmp(),
              SizedBox(height: 20),
              BoxesCmp(),
            ],
          ),
        ),
      ),
    );
  }
}
