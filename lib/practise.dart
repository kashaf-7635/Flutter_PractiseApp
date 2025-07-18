import 'dart:io';

void main() {
  print('Hello Dart!');

  stdout.write('Enter your name:');
  var name = stdin.readLineSync();
  print("Welcome, $name");

  // Human();

  // Variables
  // int a;
  // a = 5;
  // print(a);

  // String userName = "Kashaf";
  // print(userName);

  // BigInt longValue;
  // longValue = BigInt.parse('1217261637153126457125461464');
  // print(longValue);

  // double numberVal = 6;
  // print(numberVal);

  // num val = 6;
  // print(val);

  // bool isLogin = true;
  // print('User is Login $isLogin');

  // String name = "Kashaf";

  // var rollNum = 11;
  // rollNum = 12;

  // dynamic age;
  // age = 23;
  // age = "23 Years";
  // age = false;

  // var myC = myClass();
  // myC.greetUser('Kashaf Ansari');

  // print(myC.addition(3, 4));

  //   var listNames = [10, 20, 30];
  //   listNames.add(50);

  //   var names =[];
  //   names.add("Kashaf");
  //   names.add("Ansari");
  //   names.addAll(listNames);
  // names.insert(2, 100);
  //   names[1] = "Niaz";
  //   print(names);

  //   names.replaceRange(0, 2 , ["Niaz", "Ahmed"]);
  //   print(names);

  // names.removeLast();
  // print(names);
  // names.remove(30);
  // print(names);

  // names.removeAt(2);
  // print(names);

  // names.removeRange(2,7);
  // print(names.length);
  // print(names.reversed);
  // print(names.first);
  // print(names.last);
  // print(names.isEmpty);
  // print(names.isNotEmpty);

  // var new_map = {
  //   'Key1':'Val1',
  //   'key2':2,
  //   'Key3':3.0,
  //   'Key4':true
  // };

  // print(new_map['key2']);
  // print(new_map.isNotEmpty);
  // print(new_map.isEmpty);
  // print(new_map.length);
  // print(new_map.keys);
  // print(new_map.values);
  // print(new_map.containsKey('Key1'));
  // print(new_map.containsValue(2));
  // print(new_map.remove('Key1'));
  // print(new_map);

  //   final String name ="Kashaf"; // can't reassign

  // const name2 = "Kashaf";
}

// class myClass {
//   myClass() {
//     print('myClass object Created!');
//   }

//   void greetUser(String name) {
//     print("Welcome ${name}");
//   }

//   int addition(int a, int b) {
//     return a + b;
//   }
// }
