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
        body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration:BoxDecoration(border: Border.all(color: Colors.green,
          width: 25)),
        child: Container(
          height: 400,
          width: 400,
          // color: const Color.fromARGB(255, 86, 244, 54),
          decoration:BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 76, 91, 175),
          width: 19)),
          // child: Text('Hello World'),
        child: Container(
          height: 300,
          width: 300,
          // color: const Color.fromARGB(255, 86, 244, 54),
          decoration:BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 175, 76, 142),
          width: 15)),
          // child: Text('Hello World'),
        child: Container(
          height: 200,
          width: 200,
          // color: const Color.fromARGB(255, 86, 244, 54),
          decoration:BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 76, 173, 175),
          width: 12)),
          child:Center(child: Text('Hello World', style: TextStyle(fontSize:(50),),textDirection:TextDirection.ltr,),),
          
        ),),),
        
        ),
        
      ),
      ),
    );
  }
}