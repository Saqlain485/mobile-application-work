import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              Text('my first project'),
              ElevatedButton(
                onPressed: () {
                  print('azam');
                },
                child:Text('hasnain'),
              ),
              Image.asset("/hasnain.JPG",width: 400,),
            ],
            // child: Image.asset("/hasnain.JPG"),
          ),
        ),
      ),
    );
  }
}
// child: ElevatedButton(
            //   onPressed: () {
            //     print("zain jutt");

            //   },
            //   child: Text("hasnain mota"),
            //   style: ElevatedButton.styleFrom(backgroundColor:Colors.red,
            //   side: BorderSide(color:Colors.black),
            //   textStyle:TextStyle(fontSize: 18)) ,
            // ),