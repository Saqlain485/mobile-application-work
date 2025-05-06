import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Textfield1(),
      ),
    );
  }
}

class Textfield1 extends StatefulWidget {
  const Textfield1({super.key});

  @override
  State<Textfield1> createState() => _Textfield1State();
}

class _Textfield1State extends State<Textfield1> {
  var tf1 = TextEditingController();
  String st = "default value";
  // setState(() {
  // st=tf1;
  // });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: tf1,
          decoration: InputDecoration(labelText: "enter name"),
        ),
        ElevatedButton(
          onPressed: () {
            print(tf1.text);
          },
          child:Text("get data"),
        ),
      ],
    );
  }
}
