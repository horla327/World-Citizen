// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  static const String id = 'onboarding_page';
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70.00,
          ),
          Container(
            child: Image.asset('images/Group.png'),
            height: 180.00,
            width: 280.00,
          ),
          SizedBox(
            height: 40.00,
          ),
          Container(
            child: Image.asset('images/Group 2.png'),
            height: 120.00,
            width: 150.00,
          ),
          SizedBox(
            height: 30.00,
          ),
          Center(
            child: Text(
              'Declutter and Donate Your Gently-Used',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16.0,
                color: Color(0xFF2B468B),
              ),
            ),
          ),
          Center(
            child: Text(
              'Clothes with World Citizen',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16.0,
                color: Color(0xFF2B468B),
              ),
            ),
          ),
          SizedBox(
            height: 40.00,
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                  left: 70.0, right: 70.0, bottom: 10.0, top: 10.0),
              primary: Colors.white,
              backgroundColor: Color(0xFF2B468b),
              textStyle: const TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
            child: const Text(
              'GET STARTED',
              style:
                  TextStyle(fontFamily: "Nunito", fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
