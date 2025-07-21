import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    var arrNames = ['Harry', 'Hermione', 'John', 'Smith', 'James', 'Bean'];
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, andr use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Column(
        //           children: [
        //             Text('A', style: TextStyle(fontSize: 25)),
        //             Text('B', style: TextStyle(fontSize: 25)),
        //             Text('C', style: TextStyle(fontSize: 25)),
        //             Text('D', style: TextStyle(fontSize: 25)),
        //           ],
        //         ),
        //         Text('A', style: TextStyle(fontSize: 25)),
        //         Text('B', style: TextStyle(fontSize: 25)),
        //         Text('C', style: TextStyle(fontSize: 25)),
        //         Text('D', style: TextStyle(fontSize: 25)),
        //       ],
        //     ),
        //     Text('A', style: TextStyle(fontSize: 25)),
        //     Text('B', style: TextStyle(fontSize: 25)),
        //     Text('C', style: TextStyle(fontSize: 25)),
        //     Text('D', style: TextStyle(fontSize: 25)),
        //     ElevatedButton(onPressed: () {}, child: Text('Click')),
        //   ],
        // ),

        // child: Center(
        //   child: InkWell(
        //     child: Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.amber,
        //       child: InkWell(
        //         onTap: () {
        //           print('Text widget Tapped!');
        //         },
        //         child: Center(
        //           child: Text(
        //             'Click Here',
        //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        //           ),
        //         ),
        //       ),
        //     ),
        //     onTap: () {
        //       print("Tapped on container");
        //     },
        //     onLongPress: () {
        //       print("Long Pressed on container");
        //     },
        //     onDoubleTap: () {
        //       print("Double Tapped on container");
        //     },
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.green,
                          margin: EdgeInsets.only(right: 11),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.orange,
                          margin: EdgeInsets.only(right: 11),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                          margin: EdgeInsets.only(right: 11),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.purple,
                          margin: EdgeInsets.only(right: 11),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.grey,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                  margin: EdgeInsets.only(bottom: 11),
                ),
                Container(
                  height: 200,
                  color: Colors.pink,
                  margin: EdgeInsets.only(bottom: 11),
                ),
              ],
            ),
          ),
        ),
        // child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   reverse: true,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'One',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Two',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Three',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Four',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Five',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Six',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //   ],
        // ),

        // child: ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text(
        //       arrNames[index],
        //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //     );
        //   },
        //   itemCount: arrNames.length,
        //   itemExtent: 200,
        //   scrollDirection: Axis.horizontal,
        // ),
        // child: ListView.separated(
        //   itemBuilder: (context, index) {
        //     return Row(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text(
        //             arrNames[index],
        //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text(
        //             arrNames[index],
        //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //           ),
        //         ),
        //       ],
        //     );
        //   },
        //   itemCount: arrNames.length,
        //   separatorBuilder: (context, index) {
        //     return Divider(height: 100, thickness: 4);
        //   },
        // ),
      ),
    );
  }
}
