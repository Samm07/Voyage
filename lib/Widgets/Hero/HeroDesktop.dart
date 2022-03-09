import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeroDesktop extends StatelessWidget {
  const HeroDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HeroTitle(),
          HeroDesc(),
          GenerateButton(),
          // BottomNavBarFb2(),
        ],
      ),
    );
  }
}

class GenerateButton extends StatelessWidget {
  const GenerateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double textSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 20
              : 30;

      double width =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width - 20
              : 320;

      return Container(
        width: width,
        margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 90),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Generate',
            style: TextStyle(
              color: Colors.white,
              fontSize: textSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    });
  }
}

class HeroDesc extends StatelessWidget {
  const HeroDesc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double textSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 20;

      return Container(
        child: Text(
          'Welcome to Youtube Voyage which takes you through your Youtube journey',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
          ),
        ),
      );
    });
  }
}

class HeroTitle extends StatelessWidget {
  const HeroTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double textSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 60
              : 85;

      return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Youtube',
              style: GoogleFonts.shadowsIntoLight(
                fontSize: textSize,
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' Voyage',
              style: GoogleFonts.shadowsIntoLight(
                fontSize: textSize,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    });
  }
}
