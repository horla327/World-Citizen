// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:worldcitizen/reuseable_card.dart';
import 'NormalButton.dart';

class WelcomePage extends StatelessWidget {
  static const String id = 'welcome_page';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/menu.png'),
                Image.asset('images/Group 34.png'),
              ],
            ),
          ),
          Text(
            "Hi, Mary!",
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 30.0,
                fontWeight: FontWeight.w600),
          ),
          Image.asset('images/Group3.png'),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              color: Color(0xFF2B468B),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME ON BOARD',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.00,
                    ),
                    Text(
                      'Complete your profile for a seamless donation experience',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Color(0xFFFA9746),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KEEP SOMEONE WARM THIS SEASON',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.00,
                    ),
                    Text(
                      'Are you ready to spread some goodness?',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            "Let's do this",
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 16.0, color: Colors.white),
          ),
          NormalButton(
              title: 'PROCEED', colour: Color(0xFF2B468B), onPressed: () {})
        ],
      ),
    );
  }
}
