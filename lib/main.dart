import 'package:flutter/material.dart';
import 'Screens/HomeScreen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voyage',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: HomeScreen(),
    );
  }
}
