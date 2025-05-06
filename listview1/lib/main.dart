import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagespath = [
      "assets/8.JPG",
      "assets/9.JPG", 
      "assets/10.JPG"];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: ListView.builder(
        itemCount: imagespath.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagespath[index]),
          );
        },
      ),
      ),
    );
  }
}