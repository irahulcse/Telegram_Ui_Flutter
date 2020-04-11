import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow,
        accentColor: Color(0xFFe7ebf8),
        backgroundColor: Colors.white,
      ),
      home: new HomePage(),
      
    );
  }
}
