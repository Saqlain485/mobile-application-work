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
        body: Center(child:  Container(height: 500,
              width: 400,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(
                color: Color.fromARGB(255, 20, 23, 19),
                width: 5
              )),
         child: Column(
          children: [
            Container(
              height: 100,
              width: 150,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(
                color: Color.fromARGB(255, 20, 23, 19),
                width: 5
              ),borderRadius: BorderRadius.all(Radius.elliptical(30, 31))),
              child: Center(child:Text("First value",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))),
            ),
            Container(
              height: 100,
              width: 150,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(
                color: Color.fromARGB(255, 20, 23, 19),
                width: 5
              ),borderRadius: BorderRadius.all(Radius.elliptical(30, 31))),
              child: Center(child:Text("second value",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))),
            ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 70,
                  child: Center(child:Text("ONE",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))),
                  margin: EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all(
                color: Color.fromARGB(255, 20, 23, 19),
                width: 5
              ),borderRadius: BorderRadius.all(Radius.elliptical(20, 21)),),
                ),
                Container(
                  height: 60,
                  width: 70,
                 child: Center(child:Text("TWO",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))),
                  margin: EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all(
                color: Color.fromARGB(255, 20, 23, 19),
                width: 5
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
                ),
                Container(
                  height: 60,
                  width: 70,
                  child: Center(child:Text("Three",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))),
                 margin: EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all(
                color: Color.fromARGB(255, 20, 23, 19),
                width: 5
              ),borderRadius: BorderRadius.all(Radius.elliptical(20, 21))),
                ),
                Container(
                  height: 60,
                  width: 70,
                  margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(
                color: Color.fromARGB(255, 20, 23, 19),
                width: 5
              ),borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
                 child: Center(child:Text("Four",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)),
                  
                ),
              ],
            ),
          )],
         ),
        ),
      ),)
    );
  }
}