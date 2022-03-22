import 'package:flutter/material.dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/IntermediateScreen/IntermediateScreen.dart';
import 'Screens/UnAuthScreen/UnAuthScreen.dart';
import 'Screens/VoyageScreen/VoyageScreenDesktop.dart';

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
      initialRoute: '/voyage',
      routes: {
        '/': (context) => HomeScreen(),
        '/inter': (context) => const IntermediateScreen(),
        '/unauth': (context) => const UnAuthScreen(),
        '/voyage': (context) => VoyageScreenDesktop(),
      },
    );
  }
}
