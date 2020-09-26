import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wideget_demo3/Screens/onboarding.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      //Move on to OnBoarding
      var route = MaterialPageRoute(
        builder: (context) {
          return Onboarding();
        },
      );

      Navigator.of(context).pushReplacement(route);
    });

    return Container(
      child: Image.asset(
        "assets/coffeeshop.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
