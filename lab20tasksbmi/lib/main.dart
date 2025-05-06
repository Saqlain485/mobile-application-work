import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text(
              'BMI',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: MyBi(),
      ),
    );
  }
}

class MyBi extends StatefulWidget {
  const MyBi({super.key});

  @override
  State<MyBi> createState() => _MyBiState();
}

class _MyBiState extends State<MyBi> {
  int weight = 0;
  int height = 0;
  int inches = 0;
   double bmi = 0.0;
  void incrementWeight() {
    setState(() {
      weight += 10; // Increment by 10
    });
  }

  void decrementWeight() {
    setState(() {
      weight -= 10; // decrement by 10
    });
  }

  void incrementheight() {
    setState(() {
      height += 1;
    });
  }

  void decrementheight() {
    setState(() {
      height -= 1;
    });
  }

  void incrementinches() {
    setState(() {
      inches += 1;
    });
  }
  void decrementinches() {
    setState(() {
      inches -= 1;
    });
  }
   void calculateBMI() {
    // Convert weight from lbs to kg
    double weightInKg = weight * 0.453592;

    // Convert height from feet and inches to meters
    double heightInMeters = (height * 0.3048) + (inches * 0.0254);

    // Calculate BMI
    setState(() {
      bmi = weightInKg / (heightInMeters * heightInMeters);
    });
  }
  void reset (){
    setState(() {
        weight = 0;
   height = 0;
   inches = 0;
   bmi = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 50,
            width: 300,
            color: Colors.blueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Text("Units")),
                Container(child: Text("Uscustomery")),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 300,
            color: const Color.fromARGB(255, 30, 163, 103),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Weight"),
                SizedBox(width: 90),
                Text("lbs"),
                Text("$weight"),
                ElevatedButton(onPressed: decrementWeight, child: Text("-")),
                ElevatedButton(onPressed: incrementWeight, child: Text("+")),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 300,
            color: const Color.fromARGB(255, 169, 108, 9),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Height"),
                SizedBox(width: 100),
                Text("ft"),
                Text("$height"),
                ElevatedButton(onPressed: decrementheight, child: Text("-")),
                ElevatedButton(onPressed: incrementheight, child: Text("+")),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 300,
            color: const Color.fromARGB(255, 163, 75, 96),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("inches"),
                SizedBox(width: 100),
                Text("in"),
                Text("$inches"),
                ElevatedButton(onPressed: decrementinches, child: Text("-")),
                ElevatedButton(onPressed: incrementinches, child: Text("+")),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
              "Results",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            color: const Color.fromARGB(255, 17, 113, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
            onPressed: calculateBMI,
            child: Text("BMI"),
          ),
          
          // Display the BMI result
          if (bmi > 0)
            Text(
              "Your BMI is: ${bmi.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 300,
            color: Colors.blueAccent,
            child: TextButton(
              onPressed: reset,
              child: Text(
                "Reset",
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
