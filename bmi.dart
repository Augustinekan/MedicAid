import 'package:flutter/material.dart';
import 'input_page.dart';
void main()
{
  runApp(
     BmiHome(),
    );
}

class BmiHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.pinkAccent,

      ),
      home: MyBmi(),
    );
  }
}

