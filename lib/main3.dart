import 'package:flutter/material.dart';
import 'package:myapp/components/boxes.dart';
import 'package:myapp/components/gallery.dart';
import 'package:myapp/components/header.dart';
import 'package:myapp/components/listItems.dart';
import 'package:myapp/components/stack.dart';
import 'package:myapp/components/tabs.dart';
import 'package:myapp/components/wrap.dart';
import 'package:myapp/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(text: ' Welcome to '),
                            TextSpan(
                              text: 'Flutter ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 34,
                                color: Colors.orange,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'FontMain',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.headset_mic_rounded,
                            size: 30,
                            color: Colors.pink,
                          ),
                          SizedBox(width: 5),
                          FaIcon(
                            FontAwesomeIcons.flutter,
                            size: 27,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
