import 'package:flutter/material.dart';
import 'package:voyage/Widgets/CenteredView/centeredView.dart';
import 'package:voyage/Widgets/Hero/HeroDesktop.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voyage/Widgets/BottomNavBar/BottomNavBarDesktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:voyage/Widgets/BottomNavBar/BottomNavBarMobile.dart';

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
              child: HeroDesktop(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ScreenTypeLayout(
        mobile: BottomNavBarMobile(),
        desktop: BottomNavBarDesktop(),
      ),
    );
  }
}
