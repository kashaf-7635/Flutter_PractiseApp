import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/util.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String? dateSelected;
  String? timeSelected;

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Harry',
      'Hermione',
      'John',
      'Smith',
      'James',
      'Bean',
      'Harry',
      'Hermione',
      'John',
      'Smith',
      'James',
      'Bean',
    ];
    var queryText = TextEditingController();
    var time = DateTime.now();

    void updateTime() {
      setState(() {
        time = DateTime.now();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.orange,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome!', style: Theme.of(context).textTheme.headlineLarge),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        'Date: ${DateFormat('yMMMMEEEEd').format(time)}',
                        style: mTextStyle14(textColor: Colors.deepOrange),
                      ),
                      Text(
                        'Time:  ${DateFormat('jms').format(time)}',
                        style: mTextStyle14(textColor: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: updateTime,
                    child: Text(
                      'Get Current Time!',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Card(
                elevation: 5,
                shadowColor: Colors.orangeAccent,
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: queryText,
                  // obscureText: true,
                  // obscuringCharacter: '#',
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange.shade100,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    // suffixText: 'User exists!',
                    // suffixIcon: IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(Icons.search_outlined, color: Colors.orange),
                    // ),
                    prefixIcon: Icon(Icons.search_sharp, color: Colors.orange),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    String query = queryText.text.toString();
                    print(query);
                  },
                  child: Text(
                    'Get Query!',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2050),
                    );

                    if (datePicked != null) {
                      setState(() {
                        dateSelected =
                            '${datePicked.day}-${datePicked.month}-${datePicked.year}';

                        print(
                          'DateSelected: ${datePicked.day}-${datePicked.month}-${datePicked.year}',
                        );
                      });
                    }
                  },
                  child: Text(
                    dateSelected ?? 'Select Date!',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var timePicked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.dial,
                    );

                    if (timePicked != null) {
                      setState(() {
                        timeSelected =
                            '${timePicked.hour}:${timePicked.minute}';

                        print('TimeSelected: $timePicked');
                      });
                    }
                  },
                  child: Text(
                    timeSelected ?? 'Select Time!',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    Divider(height: 20, thickness: 1),
                itemBuilder: (context, index) {
                  return Card(
                    shadowColor: Colors.orangeAccent,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/128/924/924915.png',
                          ),
                          backgroundColor: Colors.orangeAccent,
                        ),
                        title: Text(arrNames[index], style: mTextStyle21()),
                        subtitle: Text(
                          'Hacker',
                          style: mTextStyle14(
                            textColor: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Icon(Icons.add),
                      ),
                    ),
                  );
                },
                itemCount: arrNames.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
