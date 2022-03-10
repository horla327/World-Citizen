// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:worldcitizen/donation_channel.dart';
import 'package:worldcitizen/widgets/NormalButton.dart';
import 'signup2.dart';

class WelcomePage extends StatefulWidget {
  final String mydata;
  WelcomePage(this.mydata);
  static const String id = 'welcome_page';

  @override
  State<WelcomePage> createState() => _WelcomePageState(this.mydata);
}

class _WelcomePageState extends State<WelcomePage> {
  String mydata;
  _WelcomePageState(this.mydata);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/menu.png'),
                Image.asset('images/Group 34.png'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Hi, $mydata!",
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Image.asset('images/Group3.png'),
            SizedBox(
              height: 15,
            ),
            Card(
              color: Color(0xFF2B468B),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME ON BOARD',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xFFFA9746),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KEEP SOMEONE WARM THIS SEASON',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Let's Do This",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            NormalButton(
                title: 'PROCEED',
                colour: Color(0xFF2B468B),
                onPressed: () {
                  Navigator.pushNamed(context, DonationChannel.id);
                })
          ],
        ),
      ),
    );
  }
}
