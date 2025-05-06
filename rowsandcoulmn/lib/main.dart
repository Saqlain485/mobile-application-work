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
        body: Container(
          child: Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 500,
                    color:const Color.fromARGB(255, 147, 255, 64),
                    ),
                    SizedBox(
                      height: 20,
                      width: 300,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                             color:const Color.fromARGB(255, 10, 20, 3),
                          ),
                          SizedBox(
                            height: 20,
                            width: 30,
                          ),
                          Container(
                            height: 40,
                            width: 320,
                            color:const Color.fromARGB(255, 157, 16, 131),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                            width: 500,
                            color:const Color.fromARGB(255, 35, 16, 157),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                            width: 500,
                            color:const Color.fromARGB(255, 124, 157, 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 300,
                      color:const Color.fromARGB(255, 157, 16, 65),
                    ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 140,
                          color:const Color.fromARGB(255, 157, 117, 16),
                        ),
                        SizedBox(
                    width: 20,
                  ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                          width: 140,
                          color:const Color.fromARGB(255, 16, 89, 157),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 70,
                          width: 140,
                          color:const Color.fromARGB(255, 157, 51, 16),
                          ),
                        ],
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                 Container(
                  child: Text("saqi"),
                  height: 100,
                  width: 300,
                         color:const Color.fromARGB(255, 157, 51, 16),
                 ) ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}