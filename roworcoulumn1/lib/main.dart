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
        body: Center(child: Container(
                  height: 600,
                    width: 300,
                     margin:EdgeInsets.only(top:50,right: 10,left: 10,bottom: 5),
                    decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 96, 35, 240),width: 5)),
                    
          child:Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(height: 180,
                    width: 330,
                    margin:EdgeInsets.all(8),
                    // padding: EdgeInsets.all(10),
                    child: Text("fixed width container"),
                    decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 9, 9, 10),width: 5)),),
                    Container(height: 380,
                    width: 330,
                    
                    margin:EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 77, 20, 208),width: 5)),
                    child: Container(child: Row(
                    children: [
                      Container(height: 340,
                    width: 185,
                    child:Center(child:  Text("Expanded chart"),),
                    margin:EdgeInsets.only(top: 20,left: 5),
                    decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 241, 12, 12),width: 5)),),
                    Container(height: 400,
                    width: 70,
                    margin:EdgeInsets.all(5),
                    child: Text("fixed width container"),
                    decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 11, 11, 11),width: 5)),),
                    ],
                  ),),),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
      )
    );
  }
}