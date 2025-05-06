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
        body:Center(
          child: Row( 
children: [ 
Expanded( 
flex: 5, 
child: Container( 
width: 200, 
height: 200, 
color: Colors.blue,),), 
// Circle Avatar Widget 
Container( 
width: 200, 
height: 200, 
color: 
Color.fromARGB(255, 243, 33, 
149), 
), 
]
        ),
      ),
      ),
    );
  }
}