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
        body:Container(
          width: double.infinity,
          height: double.infinity,
          child:Wrap(
          direction:Axis.horizontal,
          // spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 144, 135, 110),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 150, 52, 58),
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 51, 188, 49),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 123, 208, 26),
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 31, 0, 70),
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 149, 139, 109),
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 255, 7, 210),
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 30, 111, 223),
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 37, 34, 25),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            )
          ],
        )
        // ConstrainedBox(
          // constraints: const BoxConstraints(
          //   maxHeight: 300,
          //   minWidth: 100,
          //   minHeight: 100,
          //   maxWidth: 200,
          // ),
          // SizeBox Widget
          // child:
          // SizedBox.fromSize(
        //   child: ElevatedButton(
        //     style: const ButtonStyle(
        //       backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 132, 228, 241)),
        //     ),
        //     onPressed: () {},
        //     child: const Text("Click on me,the unioverty of lahore ,kdhdgdfffefefefdfdfdfdfdffdfdfdvcdvcdvfvfdgf", overflow: TextOverflow.ellipsis),
        //   ),
        // ),
      ),
      ),
    );
  }
}
