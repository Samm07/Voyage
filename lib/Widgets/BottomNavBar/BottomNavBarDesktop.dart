import 'package:flutter/material.dart';

class BottomNavBarDesktop extends StatelessWidget {
  const BottomNavBarDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 100),
      height: 40,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BottomNavBarItemDesktop(
            title: 'Terms of Service',
          ),
          BottomNavBarItemDesktop(
            title: 'About',
          ),
          BottomNavBarItemDesktop(
            title: 'Privacy Policy',
          ),
        ],
      ),
    );
  }
}

class BottomNavBarItemDesktop extends StatelessWidget {
  BottomNavBarItemDesktop({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      child: Text(
        '$title',
        style: TextStyle(
          fontSize: 17,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
