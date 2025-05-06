import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List a = ["one", "two", "three", "four", "five"];
    final List<String> image = [
      "assets/1.JPG",
      
    ];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(height: 500, width: 950, color: Colors.amberAccent),
                Container(
                  height: 600,
                  width: 900,
                  // color: const Color.fromARGB(255, 77, 64, 255),
                  child: InkWell(
                    onDoubleTap: () => print('hasnain motu chotu sinda'),
                    splashColor: Colors.black,
                    highlightColor: Colors.amber,
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
                Container(
                  height: 500,
                  width: 950,
                  child: Image.asset('assets/1.JPG'),
                ),
                Container(
                  height: 500,
                  width: 950,
                  color: Colors.amberAccent,
                  child: ListView.separated(
                    itemCount: a.length,
                    itemBuilder: (context, index) {
                      return Text(a[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                  ),
                ),
                Container(
                  height: 500,
                  width: 950,
                  // color: const Color.fromARGB(255, 14, 14, 14),
                  child: ListView.separated(
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return Text(image[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
