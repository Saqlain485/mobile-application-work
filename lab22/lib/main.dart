import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        body:RichText(text: TextSpan(
          style:TextStyle(color: Colors.blue),
       children: [TextSpan(text: "The"),
       TextSpan(text: "bilaj"),
       TextSpan(text: "leraning",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.amberAccent)),
       TextSpan(text: "IET"),
       ] )
        )
        //  FaIcon(FontAwesomeIcons.amazon,color: Colors.amberAccent,)
      ),
    );
  }
}
