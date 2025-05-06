import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List a = ["one", "two", "three", "four", "five"];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: ListView.separated(
          itemCount: a.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              subtitle: Text("03266251975"),
              title: Text("Saqlain ali"),
              trailing: IconButton(
                icon: Icon(Icons.assistant_photo),
                onPressed: () {},
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}
