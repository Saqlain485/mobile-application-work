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
        body: Rangeslider1(),
      ),
    );
  }
}

class Rangeslider1 extends StatefulWidget {
  const Rangeslider1({super.key});

  @override
  State<Rangeslider1> createState() => _Rangeslider1State();
}

class _Rangeslider1State extends State<Rangeslider1> {
  RangeValues values = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return RangeSlider(
      labels: labels,
      values: values,
      min: 0,
      max: 100,
      activeColor: Colors.black,
      inactiveColor: const Color.fromARGB(255, 33, 243, 37),
      divisions: 10,
      onChanged: (newvalue) {
        values = newvalue;
        setState(() {
          print(newvalue);
        }
        );
      },
    );
  }
}
