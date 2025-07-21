import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyCalculatorApp());
}

class MyCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      debugShowCheckedModeBanner: false,
      home: CalculatorAppPage(),
    );
  }
}

class CalculatorAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorAppPage> {
  var input1 = TextEditingController();
  var input2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Counter App')),
      body: Container(
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        color: Colors.blue.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: input1, keyboardType: TextInputType.number),
              TextField(controller: input2, keyboardType: TextInputType.number),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(input1.text.toString());
                        var num2 = int.parse(input2.text.toString());

                        var sum = num1 + num2;

                        setState(() {
                          result = "The sum of $num1 and $num2 is $sum";
                        });
                      },
                      child: FaIcon(FontAwesomeIcons.plus),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(input1.text.toString());
                        var num2 = int.parse(input2.text.toString());

                        var diff = num1 - num2;

                        setState(() {
                          result =
                              "The difference between $num1 and $num2 is $diff";
                        });
                      },
                      child: FaIcon(FontAwesomeIcons.minus),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(input1.text.toString());
                        var num2 = int.parse(input2.text.toString());

                        var product = num1 * num2;

                        setState(() {
                          result =
                              "The Product of $num1 and $num2 is ${product.toStringAsFixed(2)}";
                        });
                      },
                      child: FaIcon(FontAwesomeIcons.multiply),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(input1.text.toString());
                        var num2 = int.parse(input2.text.toString());

                        var division = num1 / num2;

                        setState(() {
                          result =
                              "The Division of $num1 and $num2 is  ${division.toStringAsFixed(2)}";
                        });
                      },
                      child: FaIcon(FontAwesomeIcons.divide),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(21),

                child: Text(result, style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
