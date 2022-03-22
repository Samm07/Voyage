// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:voyage/Widgets/CenteredView/centeredView.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Widgets/CenteredView/centeredView2.dart';

class VoyageScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double heroHeight = 0.60 * screenHeight;

    return Scaffold(
        body: CenteredView2(
            child: Center(
      child: ListView(
        children: <Widget>[
          HeroVoyage(screenHeight: screenHeight),
          Container(height: 0.40 * screenHeight, color: Colors.white),
          Container(height: 300, color: Color.fromARGB(255, 29, 29, 29)),
          Container(height: 300, color: Colors.yellow),
        ],
      ),
    )));
  }
}

class HeroVoyage extends StatelessWidget {
  const HeroVoyage({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 0.60 * screenHeight,
        color: Colors.red,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0.20 * (0.60 * screenHeight),
              child: Text(
                'Here is your',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 0.20 * (0.60 * screenHeight) + 10,
              child: HeroTitle(),
            ),
            Positioned(
              bottom: 0.10 * (0.60 * screenHeight),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.replay,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Text(
                'Please scroll down',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ));
  }
}

class Hero1 extends StatelessWidget {
  const Hero1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Column(
            children: [
              Text(
                'Here is your',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 20,
                ),
              ),
              HeroTitle(),
              Text(
                'Please scroll down',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.replay,
                  size: 30,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeroTitle extends StatelessWidget {
  const HeroTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double textSize = 105;

      return Container(
        child: Text(
          'Youtube Voyage',
          style: GoogleFonts.shadowsIntoLight(
            fontSize: textSize,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    });
  }
}
