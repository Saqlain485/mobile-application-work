import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Column(
        children: [
          Container(width: 200, height: 200, color: Colors.amberAccent),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("go back"),
          ),
        ],
      ),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(height: 200, width: 200, color: Colors.amberAccent);
//   }
// }
