// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../signup_form.dart';
import '../widgets/NormalButton.dart';

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
          NormalButton(
            title: 'GET STARTED',
            colour: Color(0xFF2B468B),
            onPressed: () {
              Navigator.pushNamed(context, SignUpForm.id);
            },
          ),
        ],
      ),
    );
  }
}
