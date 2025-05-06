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
            height: 50,
            width: 300,
            color: Colors.blue,
            child: Center(child: Text("Login page",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),)),
          ),
          
          
        ),
        body: 
          Loginpage()
      ),
    );
  }
}
class Loginpage extends StatefulWidget {
  
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var tf1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SizedBox(height: 100),
        Container(
          height:100,
          width:300,
          child:Row(
            children: [
              
               Padding(
                 padding: const EdgeInsets.only(left: 50.0),
                 child: Container(
                    child:Image.asset("assets/1.PNG"),
                  ),
               ),
                 Container(margin: EdgeInsets.all(10),
                  child:Center(child: Text("Flutter",style:TextStyle(fontWeight:FontWeight.w500,fontSize: 50,color: const Color.fromARGB(255, 40, 39, 39)),)),
                  
                ),
              
            ],
          )
      ),
        //  SizedBox(height: 40),
        Container(height: 50,
        width: 300,
         decoration:BoxDecoration(border: Border.all(width: 0.5)),
          child:TextField(
            controller:tf1,
             decoration: InputDecoration(labelText: "Email"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 50,
          width: 300,
          decoration:BoxDecoration(border: Border.all(width: 0.5)),
            child:TextField(
              controller:tf1,
               decoration: InputDecoration(labelText: "Password"),
            ),
          ),
        ),
        Container(height: 50,
        width: 300,
          child: TextButton(onPressed: (){}, child: Text("forget password")),
        ),
        Container(height: 50,
        width: 300,
        // color: Colors.blue,
          child: ElevatedButton(onPressed: (){}, child: Text("login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),style:ElevatedButton.styleFrom(
            backgroundColor:Colors.blue
          ),),
        )
      ],
    );
  }
}