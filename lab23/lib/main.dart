import 'package:flutter/material.dart';
import 'package:lab23/widgets/mycustomwidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Customwidget(
          age: 43,
          color1: const Color.fromARGB(255, 243, 33, 117),
          name:"saqlainAli",
        ),
      ),
    );
  }
}