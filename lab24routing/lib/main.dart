import 'package:flutter/material.dart';
import 'package:lab24routing/test.dart'; // Assuming MyApp1 is defined here
import 'package:lab24routing/testwithdata.dart'; // Assuming MyApp2 is defined here

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrapping in MaterialApp for better app structure
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: const MyWidget(), // Navigate to MyWidget from here
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // Controllers for TextField
  var tf1 = TextEditingController();
  var tf2 = TextEditingController();
final String name = 'saqlain';
  final int num = 70142043;
  // Function to handle login
  void _login() {
    String enteredName = tf1.text;  // Get entered name
    int ? enteredNumber = int.tryParse(tf2.text);
    if (enteredName == name&&enteredNumber==num) {
      // Navigate to the second screen if both text fields match
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyApp1()),
      );
    } else {
      // Show error if the texts don't match
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('The values do not match!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // First TextField for user input
          TextField(
            controller: tf1,
            decoration: const InputDecoration(
              labelText: 'Enter Value',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20), // Spacing between the TextField and buttons

          // Second TextField for confirmation
          TextField(
            controller: tf2,
            decoration: const InputDecoration(
              labelText: 'Confirm Value',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20), // Spacing between the TextField and buttons

          // Button to navigate after matching values
          ElevatedButton(
            onPressed: _login, // Call _login method on press
            child: const Text('login and next'),
          ),
          const SizedBox(height: 20), // Spacing between buttons

          // Button to navigate with data (passing some sample data)
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyApp2(name: 'Saqlain'),
                ), // Navigating to MyApp2 with data
              );
            },
            child: const Text('Next with Data'),
          ),
        ],
      ),
    );
  }
}
