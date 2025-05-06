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
        body:Container(
              
              width: 300,
              height: 350,
              // color: Colors.blue,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                )
              ),
              child: Column(
                children: [
                  Container(
                    child: Text("First value",
                    textAlign:TextAlign.center),
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.all(10.0),  
                    padding: EdgeInsets.only(top:10),
                    decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              
                  ),
                
                Container(
                    child: Text("Second value",
                    textAlign:TextAlign.center),
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.all(10.0),  
                    padding: EdgeInsets.only(top:10),
                    decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              
                  ),
                 
                 Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text("plus",
                    textAlign:TextAlign.center),
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(10.0),  
                    padding: EdgeInsets.only(top:10),
                    decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
                // borderRadius: BorderRadius.circular(15),
              ),
                      ),
                      Container(
                        child: Text("Minus",
                    textAlign:TextAlign.center),
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(10.0),  
                    padding: EdgeInsets.only(top:10),
                    decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
                // borderRadius: BorderRadius.circular(15),
              ),
                      ),
                      Container(
                        child: Text("Divide",
                  textAlign:TextAlign.center),
                  
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(10.0),  
                    padding: EdgeInsets.only(top:10),
                    decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
                // borderRadius: BorderRadius.circular(15),
              ),
                      ),
                      Container(
                        child: Text("Multi",
                    textAlign:TextAlign.center),
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(10.0),  
                    padding: EdgeInsets.only(top:10),
                    decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
                // borderRadius: BorderRadius.circular(15),
              ),
                      )
                    ],
                  ),
                 ) ],

              
             
              
            )

          )


          
        ),
      );
    
  }
}