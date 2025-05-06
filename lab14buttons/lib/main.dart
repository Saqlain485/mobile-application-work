import 'package:flutter/material.dart';

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
        body: ElevatedButton( onPressed: () {
          print("object");  
            
        },
          child: Text('Hello World'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            textStyle: TextStyle(fontSize: 50)
           ),
        ),
       
      ),
    );
  }
}