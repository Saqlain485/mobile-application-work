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
        body:Container(
          height: double.infinity,
          width: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            runSpacing: 5,
            spacing: 15,
            children: [
                Container(
                  height: 50,
                  width: 500,
                  color: Colors.amberAccent,
                  child:Center(child: Text("Wrap",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                ),
                Container(
                  height: 50,
                  width: 500,
                  color: Colors.amberAccent,
                   child:Center(child: Text("container",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                ),
                Container(
                  height: 50,
                  width: 1015,
                  color: Colors.amberAccent,
                   child:Center(child: Text("widgets",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                ),
                Container(
                  height: 50,
                  width: 1015,
                  color: Colors.amberAccent,
                  child:Center(child: Text("Rendering",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                ),
                Container(
                  height: 50,
                  width: 329,
                  color: Colors.amberAccent,
                   child:Center(child: Text("Aleem gunda",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                ),
                Container(
                  height: 50,
                  width: 328,
                  color: Colors.amberAccent,
                  child:Center(child: Text("bilaj don",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                ),
                Container(
                  height: 50,
                  width: 328,
                  color: Colors.amberAccent,
                   child:Center(child: Text("saqlain",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                ),
                Container(
                  height: 50,
                  width: 1015,
                  color: Colors.amberAccent,
                  child:Center(child: Text("don",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                )
                )
            ],
          ),
        )
      ),
    );
  }
}