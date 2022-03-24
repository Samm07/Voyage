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
    double heroHeight = 0.70 * screenHeight;
    double stripHeight = 0.30 * screenHeight;
    double stripWidth = 2000;

    return Scaffold(
        body: CenteredView2(
            child: Center(
      child: ListView(
        children: <Widget>[
          HeroVoyage(screenHeight: screenHeight),
          CreatedStrip(stripHeight: stripHeight),
          SubStrip(stripHeight: stripHeight),
          SubStrip(stripHeight: stripHeight),
          SubStrip(stripHeight: stripHeight),
        ],
      ),
    )));
  }
}

class SubStrip extends StatelessWidget {
  const SubStrip({
    Key? key,
    required this.stripHeight,
  }) : super(key: key);

  final double stripHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: stripHeight,
      color: Color.fromARGB(255, 29, 29, 29),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Container(
              // margin: EdgeInsets.only(top: 120),
              child: null,
              height: (stripHeight),
              width: 15,
              color: Colors.red,
            ),
          ),
          CircleAvatar(
            radius: 60,
            foregroundImage: Image.network(
                    'https://www.nme.com/wp-content/uploads/2021/07/bts-jungkook-big-hit-music-facebook-260721-e1627282234489-696x442.jpg')
                .image,
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 450, 45),
              child: Text(
                'Subscribed to',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(right: 450),
              child: Text(
                'BTS',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(left: 450),
              child: Text(
                '12th Sep 2020',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CreatedStrip extends StatelessWidget {
  const CreatedStrip({
    Key? key,
    required this.stripHeight,
  }) : super(key: key);

  final double stripHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: stripHeight,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 120),
              child: null,
              height: (stripHeight / 2),
              width: 15,
              color: Colors.red,
            ),
          ),
          CircleAvatar(
            radius: 60,
            foregroundImage: Image.network(
                    'https://www.nme.com/wp-content/uploads/2021/07/bts-jungkook-big-hit-music-facebook-260721-e1627282234489-696x442.jpg')
                .image,
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(right: 450),
              child: Text(
                'Created account',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(left: 450),
              child: Text(
                '12th Sep 2013',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
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
              child: GestureDetector(
                onTap: () {
                  print('pressed');
                  Navigator.pushNamed(context, '/');
                },
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
