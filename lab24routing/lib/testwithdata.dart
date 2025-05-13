import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

class MyApp2 extends StatelessWidget {
  final String ? name;

  const MyApp2({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material App Bar')),
      body: Text(name!),
    );
  }
}
