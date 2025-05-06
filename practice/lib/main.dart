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
          child:Column(
            children: [
              Container(
                height: 500,
                width: 250,
                color: const Color.fromARGB(255, 147, 255, 7),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      color: const Color.fromARGB(255, 255, 7, 185),
                      child: Row(
                        children: [
                          Text("whatsapp",style:TextStyle(color: Colors.amber,fontSize: 20)),
                          ListTile(
                             trailing: IconButton(
                icon: Icon(Icons.assistant_photo),
                onPressed: () {},
              ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}