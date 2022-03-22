import 'package:flutter/material.dart';

class UnAuthScreen extends StatelessWidget {
  const UnAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Authorization Failed. Try again'),
      ),
    );
  }
}
