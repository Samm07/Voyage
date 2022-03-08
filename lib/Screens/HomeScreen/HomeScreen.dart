import 'package:flutter/material.dart';
import 'package:voyage/Widgets/CenteredView/centeredView.dart';
import 'package:voyage/Widgets/Hero/HeroDesktop.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  Widget svg = new SvgPicture.asset(
    'images/logo-black.svg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CenteredView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroDesktop(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
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
          BottomNavBarItem(
            title: 'Terms of Service',
          ),
          BottomNavBarItem(
            title: 'About',
          ),
          BottomNavBarItem(
            title: 'Privacy Policy',
          ),
        ],
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  BottomNavBarItem({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
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
