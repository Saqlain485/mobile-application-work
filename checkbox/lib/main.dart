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
        body: Checkboxe(),
      ),
    );
  }
}

class Checkboxe extends StatefulWidget {
  const Checkboxe({super.key});

  @override
  State<Checkboxe> createState() => _CheckboxeState();
}

class _CheckboxeState extends State<Checkboxe> {
  bool ischecked = false;
  void togglecheckbox() {
    setState(() {
      ischecked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
          value: ischecked,
          onChanged: (value) {
            togglecheckbox();
            CheckboxListTile(
              title: Text('Remember me'),
              value: ischecked,
              onChanged: (value) => setState(() => ischecked = true),
            );
          },
        ),
        Text(ischecked ? "checked" : "not checked"),
      ],
    );
  }
}
