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
          title: Container(
            height: 100,
            width: 400,
            color:Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order'),
              Text('Price'),
              Text('Amount'),
              
            ],
                    ),
          )
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            height: 580,
            width: 400,
            color: const Color.fromARGB(255, 11, 21, 26),
            child: Card(
              // elevation: 40,
              child: Stack(
                children: [
                  Positioned(
                    // top: 10,
                    child: SingleChildScrollView(
                      child: Container(
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          color: const Color.fromARGB(255, 56, 230, 242),
                        ),
                        height: 700,
                        width: 400,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      // backgroundImage: AssetImage('assets/m1.jpg'),
                                    ),
                                  ),
                                  Text('Mushroom'),
                                   
                                ],
                              ),
                            
                            Text('150',style: TextStyle(fontSize: 21),),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('5',style: TextStyle(fontSize: 21),),
                            ),
                              ],
                            )
                          ],
                        ),
                      
                        
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                          color: const Color.fromARGB(255, 226, 217, 52),
                        ),
                        height: 700,
                        width: 400,
                            child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      // backgroundImage: AssetImage('assets/m1.jpg'),
                                    ),
                                  ),
                                  Text('Mushroom')
                                ],
                              ),
                            
                            Text('700',style: TextStyle(fontSize: 21),),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('2',style: TextStyle(fontSize: 21),),
                            ),
                              ],
                            )
                          ],
                        ),
                        
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SingleChildScrollView(
                      child: Container(
                        height: 700,
                          width: 400,
                        
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            color: const Color.fromARGB(255, 235, 82, 82),
                          ),
                            child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      // backgroundImage: AssetImage('assets/m1.jpg'),
                                    ),
                                  ),
                                 Text('Mushroom')
                                ],
                              ),
                            
                            Text('800',style: TextStyle(fontSize: 21),),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('6',style: TextStyle(fontSize: 21),),
                            ),
                              ],
                            )
                          ],
                        ),
                        
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SingleChildScrollView(
                      child: Container(
                        height: 700,
                          width: 400,
                         
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            color: const Color.fromARGB(255, 207, 64, 28),
                          ),
                              child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      // backgroundImage: AssetImage('assets/m1.jpg'),
                                    ),
                                  ),
                                  Text('Mushroom')
                                ],
                              ),
                            
                            Text('200',style: TextStyle(fontSize: 21),),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('2',style: TextStyle(fontSize: 21),),
                            ),
                              ],
                            )
                          ],
                        ),
                        
                      ),
                    ),
                  ),
                  Positioned(
                    top: 400,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SingleChildScrollView(
                      child: Container(
                        height: 700,
                          width: 400,
                       
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            color: const Color.fromARGB(255, 33, 243, 114),
                          ),
                              child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      // backgroundImage: AssetImage('assets/m1.jpg'),
                                    ),
                                  ),
                                  Text('Mushroom')
                                ],
                              ),
                            
                            Text('500',style: TextStyle(fontSize: 21),),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('9',style: TextStyle(fontSize: 21),),
                            ),
                              ],
                            )
                          ],
                        ),
                        
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                        color: const Color.fromARGB(255, 227, 223, 223),
                       ),
                      height: 70,
                      width: 400,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 14,left: 100),
                                child: Text('Result',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 14,left: 30),
                                child: Text('550',style: TextStyle(fontSize: 28),),
                              ),
                            ],
                          )
                        ],
                      ),
                      
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}