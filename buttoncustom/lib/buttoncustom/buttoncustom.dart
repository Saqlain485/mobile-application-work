import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String? btname;
  const Custombutton({super.key, this.btname});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(btname);
      },
      child:Text(btname!),
    );
  }
}
