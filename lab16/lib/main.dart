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
        body: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,  // Enable horizontal scrolling
          child: Column(
            // Row widget to arrange children horizontally
            children: [
              // First container with CircleAvatar
              Container(
                width: 1000, // Width to create overflow
                height: 1200,
                color: Colors.blue,
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 238, 240, 242),
                  radius: 70,
                  child: const Text("University of Lahore"),
                ),
              ),

              // Second container with a color
              Container(
                width: 1000, // Width to create overflow
                height: 1200,
                color: Color.fromARGB(255, 243, 33, 149),
              ),

              // Third container with an Icon
              Container(
                width: 1000, // Width to create overflow
                height: 1200,
                color: Colors.green,
                alignment: Alignment.topLeft,
                child: const Icon(
                  Icons.eight_k_plus,
                  size: 100,
                  color: Color.fromARGB(255, 17, 17, 17),
                ),
              ),
              Container(
                height: 600,
                width: 1000,
                color: Colors.red,
                child: ListView(
                  children: [
                    ListTile(
                  leading: Icon(Icons.person),
                  title: Text("saqlain dhillon"),
                  subtitle: Text("jutt ge"),
                  trailing: IconButton(
                    onPressed: () {
                      print("sabtain ddhillon");
                    },
                    icon: Icon(Icons.time_to_leave),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.female),
                  title: Text("sabtain dhillon"),
                  subtitle: Text("jutt"),
                  trailing: IconButton(
                    onPressed: () {
                      print("sabtain ddhillon");
                    },
                    icon: Icon(Icons.time_to_leave),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("saqlain dhillon"),
                  subtitle: Text("jutt ge"),
                  trailing: IconButton(
                    onPressed: () {
                      print("sabtain ddhillon");
                    },
                    icon: Icon(Icons.time_to_leave),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.access_alarm_outlined),
                  title: Text("safder"),
                  subtitle: Text("malik"),
                  trailing: IconButton(
                    onPressed: () {
                      print("sabtain ddhillon");
                    },
                    icon: Icon(Icons.time_to_leave),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_outlined),
                  title: Text("Sohail"),
                  subtitle: Text("sandu"),
                  trailing: IconButton(
                    onPressed: () {
                      print("sabtain ddhillon");
                    },
                    icon: Icon(Icons.abc_rounded),
                  ),
                ),
                  ],
                )
                
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
