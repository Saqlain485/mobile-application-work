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
        body: CircleAvatar(
          backgroundImage: AssetImage("assets/1.JPG") ,
           maxRadius: 150,
           minRadius: 20,
            // foregroundColor: const Color.fromARGB(255, 15, 7, 255),
          child: Container(
            child: Row(
              children: [
                Text("the university of lahore"),
                
          Icon(
            Icons.battery_1_bar_rounded,
            color: const Color.fromARGB(255, 255, 7, 214),
            size: 100,
          ),
              ],
            )),
          //  radius: 100,
          
          
        ),
      ),
    );
  }
}