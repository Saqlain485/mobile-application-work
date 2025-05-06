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
          title: const Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
       child:  Container(
          child: Column(
            children: [
              // Row with Text widgets (Order, Price, Amount)
              Container(
                height: 100,
                width: 400,
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Order",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Price",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Amount",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              // First Card
              
            Card(
                color: Colors.blue,
                child:Stack(
                    children: [
                      
                    Positioned( 
                    bottom: 40, 
                    right: 50, 
                    width: 250, 
                    height: 170, 
                    child:Container(color: const Color.fromARGB(255, 243, 33, 166),),)
                    ],
                ),
              ),
              
              // Second Card
              Card(
                color:Colors.blueGrey,
                child:Stack(
                    children: [
                        Positioned( 
                    bottom: 50, 
                    right: 60, 
                    width: 330, 
                    height: 150, 
                    child:Container(color: const Color.fromARGB(255, 5, 9, 13),),)
                    ],
                ),
              ),
              Card(
                
                color:const Color.fromARGB(255, 18, 135, 32),
                child:Stack(
                    children: [
                       Positioned( 
                    bottom: 60, 
                    right: 30, 
                    width: 300, 
                    height: 100, 
                    child:Container(color: const Color.fromARGB(255, 243, 33, 114),),)
                        
                    ],
                ),
              ),
              Card(
                color:const Color.fromARGB(255, 221, 102, 17),
                child:Stack(
                    children: [
                       
                      Positioned( 
                    bottom: 30, 
                    right: 20, 
                    width: 220, 
                    height: 100, 
                    child:Container(color: const Color.fromARGB(255, 86, 102, 12),),) 
                    ],
                ),
              ),
              Card(
                color:const Color.fromARGB(255, 25, 17, 65),
                child:Stack(
                    children: [
                        Positioned( 
                    bottom: 70, 
                    right: 30, 
                    width: 200, 
                    height: 100, 
                    child:Container(color: const Color.fromARGB(255, 53, 13, 126),),)
                    ],
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
    
  }
}
