import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {
  final String? name;
  final Color? color1;
  final int? age;
  const Customwidget({super.key,this.name,this.color1,this.age});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: color1,
      child: Text(name!,style: TextStyle(color: color1),),
    );
  }
}
