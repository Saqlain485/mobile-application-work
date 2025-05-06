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
        body: SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          // child Text('Hello World'),
          child: Row(
            children: [
              // Image.asset('assets/1.JPG',height: 40,fit:BoxFit.cover,),
              
              Image.asset("assets/6.JPG",width: 240,),
              Image.asset("assets/7.JPG",width: 240,),SizedBox(height:5),
              Image.asset("assets/8.JPG",width: 240,),SizedBox(height:5),
              Image.asset("assets/9.JPG",width: 240,),SizedBox(height:5),
              Image.asset("assets/10.JPG",width: 240,),SizedBox(height:5),
            ],
          ),
        ),
      ),
    );
  }
}