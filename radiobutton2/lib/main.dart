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
        body: const Radiobutton1(),
      ),
    );
  }
}

class Radiobutton1 extends StatefulWidget {
  const Radiobutton1({super.key});

  @override
  State<Radiobutton1> createState() => _Radiobutton1State();
}

class _Radiobutton1State extends State<Radiobutton1> {
  String st = "Red"; // Default to "Red" so a color is shown initially

  void radiostate(String? opVal) {
    setState(() {
      st = opVal!;
    });
  }

  Color getSelectedColor() {
    switch (st) {
      case "Red":
        return Colors.red;
      case "green":
        return Colors.green;
      case "yellow":
        return Colors.yellow;
      default:
        return Colors.grey; // Default color if nothing matches
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text("Red"),
          value: "Red",
          groupValue: st,
          onChanged: radiostate,
        ),
        RadioListTile(
          title: const Text("green"),
          value: "green",
          groupValue: st,
          onChanged: radiostate,
        ),
        RadioListTile(
          title: const Text("yellow"),
          value: "yellow",
          groupValue: st,
          onChanged: radiostate,
        ),
        Text("Selected color is $st"),
        Container(
          height: 100,
          width: 170,
          color: getSelectedColor(),
        ),
      ],
    );
  }
}
