import 'package:flutter/material.dart';

class CenteredView2 extends StatelessWidget {
  final Widget child;
  const CenteredView2({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amberAccent,
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 2000),
        child: child,
      ),
      // constraints: BoxConstraints(maxWidth: 1200),
      // child: child,
    );
  }
}
