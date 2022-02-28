// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:worldcitizen/onboarding_screen2.dart';

class OnboardingScreen extends StatelessWidget {
  static const String id = 'onboarding_screen';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B468B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/Vector.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'World',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, OnboardingPage.id);
                },
                child: Text(
                  'Citizen',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 35.0,
                    color: Color(0xFFE78B38),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
