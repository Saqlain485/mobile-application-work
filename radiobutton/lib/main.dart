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
        body: Radiobutton1(),
      ),
    );
  }
}

class Radiobutton1 extends StatefulWidget {
  const Radiobutton1({super.key});

  @override
  State<Radiobutton1> createState() => _Radiobutton1State();
}

class _Radiobutton1State extends State<Radiobutton1> {
  String st = "options";
  void radiostate(String? op_val) {
    setState(() {
      st=op_val!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: "male",
          groupValue: st,
          onChanged: (value) {
            radiostate(value);
          },
        ), 
        RadioListTile(
          value: "female",
          groupValue: st,
          onChanged: (value) {
            radiostate(value);
          },
        ),Text("selected human is $st"),
      ],
    );
  }
}
