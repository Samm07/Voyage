import 'package:flutter/material.dart';

class BottomNavBarMobile extends StatelessWidget {
  const BottomNavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          BottomNavBarItemMobile(
            title: 'Terms of Service',
          ),
          BottomNavBarItemMobile(
            title: 'About',
          ),
          BottomNavBarItemMobile(
            title: 'Privacy Policy',
          ),
        ],
      ),
    );
  }
}

class BottomNavBarItemMobile extends StatelessWidget {
  String title;
  BottomNavBarItemMobile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        '$title',
        style: TextStyle(
          fontSize: 14,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
