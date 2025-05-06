import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

void main() {
  tz.initializeTimeZones(); // Must initialize once
  runApp(const MyApp());
}

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
  String _currentTime = 'Select a country to view time and difference';

  void _updateTime(String country) {
    final localTime = DateTime.now(); // This is your device's local time
    tz.Location location;
    String locationLabel;

    switch (country) {
      case 'USA':
        location = tz.getLocation('America/New_York');
        locationLabel = 'New York, USA';
        break;
      case 'India':
        location = tz.getLocation('Asia/Kolkata');
        locationLabel = 'India';
        break;
      case 'Japan':
        location = tz.getLocation('Asia/Tokyo');
        locationLabel = 'Japan';
        break;
      case 'Pakistan':
      default:
        location = tz.getLocation('Asia/Karachi');
        locationLabel = 'Pakistan';
        break;
    }

    final tzTime = tz.TZDateTime.now(location);
    final timeFormatted = DateFormat('yyyy-MM-dd – hh:mm:ss a').format(tzTime);
    final hourDifference = tzTime.difference(localTime).inHours;

    final differenceText = hourDifference == 0
        ? 'Same as your local time'
        : hourDifference > 0
            ? '$hourDifference hours ahead'
            : '${hourDifference.abs()} hours behind';

    setState(() {
      _currentTime =
          '$locationLabel Time:\n$timeFormatted\n($differenceText of your local time)';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "World Time Viewer",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              _currentTime,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _updateTime('Pakistan'),
              child: Text('Pakistan Time'),
            ),
            ElevatedButton(
              onPressed: () => _updateTime('USA'),
              child: Text('USA Time'),
            ),
            ElevatedButton(
              onPressed: () => _updateTime('India'),
              child: Text('India Time'),
            ),
            ElevatedButton(
              onPressed: () => _updateTime('Japan'),
              child: Text('Japan Time'),
            ),
          ],
        ),
      ),
    );
  }
}
