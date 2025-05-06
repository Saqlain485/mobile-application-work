import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contact List'),
        ),
        body: ContactList(),
      ),
    );
  }
}
class name extends StatelessWidget {
    final List<Map<String, String>> contacts 

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ContactList extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {'name': 'John Doe', 'phone': '+1 234 567 8901'},
    {'name': 'Jane Smith', 'phone': '+1 234 567 8902'},
    {'name': 'Alice Johnson', 'phone': '+1 234 567 8903'},
    {'name': 'Bob Brown', 'phone': '+1 234 567 8904'},
    {'name': 'Charlie Davis', 'phone': '+1 234 567 8905'},
    {'name': 'David Evans', 'phone': '+1 234 567 8906'},
    {'name': 'Emily Harris', 'phone': '+1 234 567 8907'},
    {'name': 'Frank Green', 'phone': '+1 234 567 8908'},
    {'name': 'Grace Lewis', 'phone': '+1 234 567 8909'},
    {'name': 'Henry Walker', 'phone': '+1 234 567 8910'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(contact['name']![0]),  // First letter of the name
            foregroundColor: Colors.white,
          ),
          title: Text(contact['name']!),
          subtitle: Text(contact['phone']!),
          trailing: const Icon(Icons.phone),
          onTap: () {
          },
        );
      },
    );
  }
}
