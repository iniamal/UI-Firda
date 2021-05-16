import 'package:flutter/material.dart';
import 'package:mpirda/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bones Resort',
      home: HomeScreen(),
    );
  }
}
