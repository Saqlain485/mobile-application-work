import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Checkbox App',
      home: const ColorCheckboxScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColorCheckboxScreen extends StatefulWidget {
  const ColorCheckboxScreen({super.key});

  @override
  State<ColorCheckboxScreen> createState() => _ColorCheckboxScreenState();
}

class _ColorCheckboxScreenState extends State<ColorCheckboxScreen> {
  String? selectedColor;

  void _onColorSelected(String color) {
    setState(() {
      selectedColor = color;
    });
  }

  Color _getColor() {
    switch (selectedColor) {
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      default:
        return Colors.grey.shade300;
    }
  }

  bool _isChecked(String color) => selectedColor == color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Checkbox Selector")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text('Red'),
              value: _isChecked('red'),
              activeColor: Colors.red,
              onChanged: (_) => _onColorSelected('red'),
            ),
            CheckboxListTile(
              title: const Text('Blue'),
              value: _isChecked('blue'),
              activeColor: Colors.blue,
              onChanged: (_) => _onColorSelected('blue'),
            ),
            CheckboxListTile(
              title: const Text('Green'),
              value: _isChecked('green'),
              activeColor: Colors.green,
              onChanged: (_) => _onColorSelected('green'),
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: 70,
              color: _getColor(),
              alignment: Alignment.center,
              child: Text(
                selectedColor != null
                    ? 'Selected: ${selectedColor!.toUpperCase()}'
                    : 'Select a Color',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
