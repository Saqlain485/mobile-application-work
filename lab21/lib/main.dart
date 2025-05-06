import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Time',
      home: Scaffold(
        appBar: AppBar(title: const Text('World Time')),
        body: TimePage(),
      ),
    );
  }
}

class TimePage extends StatefulWidget {
  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  String _currentTime = 'Select a country to view time';

  void _updateTime(String country) {
    // Use local time as base
    DateTime now = DateTime.now();
    Duration offset;

    switch (country) {
      case 'USA':
        offset = const Duration(hours: -9); // USA (New York: UTC-4) - 5 hours behind Pakistan
        break;
      case 'India':
        offset = const Duration(hours: 0, minutes: 30); // India is +0:30 ahead of Pakistan
        break;
      case 'Japan':
        offset = const Duration(hours: 4); // Japan is 4 hours ahead of Pakistan
        break;
      case 'Pakistan':
      default:
        offset = Duration.zero; // No offset, current local time
        break;
    }

    DateTime countryTime = now.add(offset);
    String formatted = DateFormat('yyyy-MM-dd – hh:mm:ss a').format(countryTime);

    setState(() {
      _currentTime = '$country Time: $formatted';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "4 Countries Time",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            _currentTime,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => _updateTime('Pakistan'),
            child: Text('Pakistan Time',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => _updateTime('USA'),
            child: Text('USA Time',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => _updateTime('India'),
            child: Text('India Time',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => _updateTime('Japan'),
            child: Text('Japan Time',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
          ),
        ],
      ),
    );
  }
}
