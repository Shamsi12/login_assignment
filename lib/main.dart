import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
        child:Text(
          "Name: Ubaidullah Shamsi\nEmail: ubaidullahshamsi810@gmail.com",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.purple
          ),
        ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
