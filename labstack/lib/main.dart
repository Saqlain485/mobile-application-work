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
        body: Container(
          child: Row(
            children: [
    
              
             Container (
              child: Column(
                children: [
                   Container(
              height: 50,
              width: 300,
              color: const Color.fromARGB(255, 255, 7, 73),
            ),
            SizedBox(
              height: 20,
              width: 300,
              
            ),
            Container(
            child: Row(
              children: [
                Container(
                  height: 50,
                  width:80,
                 color: const Color.fromARGB(255, 36, 63, 7),
                ),
                 Container(
                  height: 20,
                  width:20,
                //  color: const Color.fromARGB(255, 36, 63, 7),
                ),
                Container(
                  height: 50,
                  width:200,
                 color:  Colors.red,
                ),
              ],
            ),
            ),
            Container(
              height: 20,
              width: 300,
              
            ),
            
            // Container(
            //   height: 20,
            //   width: 500,
              
            // ),
            Container(
              height: 200,
              width: 300,
              color: const Color.fromARGB(255, 135, 7, 255),
            ),
            // 
            SizedBox(height: 20,
            width: 300,),
            Container(
              height: 50,
              width: 300,
              color: Color.fromARGB(255, 7, 255, 36),
            ),
                ],
              ),
                
              ),
              SizedBox(
                width: 20,
              ),

              
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 175,
                      width: 300,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 134,
                            width: 145,
                            color: Colors.green,
                          ),
                          SizedBox(
                          width: 10,
                            ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 145,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  height: 5,
                                      ),
                                Container(
                                  height: 110,
                                  width: 145,
                                  color: Colors.red,

                                ),
                               
                              ],
                              

                            ),
                            
                          ),
                        ],
                        
                      ),
                      

                    ),
                    SizedBox(
                           height: 10,
                            ),
                  Container(
                       height: 80,
                       width: 300,
                       color: Colors.lightGreen,
                        )
                         ],

                ),
                
              ),


              SizedBox(
                width: 20,
              ),
              Container(
               child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                           width: 140,
                            color: Colors.green,

                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 55,
                                width: 140,
                                color: Colors.lightBlue,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 240,
                                width: 140,
                                color: Colors.red,

                              )
                            ],
                          ),
                          

                        ),
                      ],
                    ),
                    
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  
                  Container(
                    height: 100,
                    width: 290,
                    color: Colors.purple,
                  ),
                ],
               ),
              ),
            ],
            
          )
        )
        )
      );
  }
}