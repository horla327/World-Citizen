// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:worldcitizen/widgets/NormalButton.dart';
import 'package:worldcitizen/screens/donate_nearby.dart';
import 'package:worldcitizen/screens/welcome_page.dart';

import 'screens/donate_nearby2.dart';
import 'pickup_location.dart';

class DonationChannel extends StatefulWidget {
  static const String id = 'donation_channel';
  const DonationChannel({Key? key}) : super(key: key);

  @override
  State<DonationChannel> createState() => _DonationChannelState();
}

class _DonationChannelState extends State<DonationChannel> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Color(0xFF2B468B),
                  onPressed: () {
                    Navigator.pushNamed(context, WelcomePage.id);
                  },
                ),
                SizedBox(
                  child: Image.asset('images/Group 2.png'),
                  height: 90.00,
                  width: 90.00,
                ),
                Image.asset('images/Group 34.png'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'How would you like to donate?',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _hasBeenPressed = !_hasBeenPressed;
                    });
                  },
                  icon: Icon(Icons.circle),
                  color:
                      _hasBeenPressed ? Color(0xFF2B468B) : Color(0xFFEAE9E9),
                  iconSize: 20,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Image.asset('images/Vector (4).png'),
                SizedBox(
                  width: 25.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Donate nearby',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Find a collection centre',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'around you and make your',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'donations with ease',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _hasBeenPressed1 = !_hasBeenPressed1;
                    });
                  },
                  icon: Icon(Icons.circle),
                  color:
                      _hasBeenPressed1 ? Color(0xFF2B468B) : Color(0xFFEAE9E9),
                  iconSize: 20,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Image.asset('images/Vector (2).png'),
                SizedBox(
                  width: 25.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Schedule a pick-up',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Have us come and get your',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'stuff, we will make sure it get',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'to the cause you care about',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _hasBeenPressed2 = !_hasBeenPressed2;
                    });
                  },
                  icon: Icon(Icons.circle),
                  color:
                      _hasBeenPressed2 ? Color(0xFF2B468B) : Color(0xFFEAE9E9),
                  iconSize: 20,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Image.asset('images/Vector (3).png'),
                SizedBox(
                  width: 25.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Support because you care',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'World Citizen is a non-profit',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'making organization. Feel',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'free to support the cause and',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'be sure it get to the right',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 30.0),
            NormalButton(
                title: 'NEXT',
                colour: Color(0xFF2B468B),
                onPressed: () {
                  if (_hasBeenPressed == true) {
                    Navigator.pushNamed(context, DonateNearby.id);
                  } else if (_hasBeenPressed1 == true) {
                    Navigator.pushNamed(context, PickupLocation.id);
                  } else if (_hasBeenPressed2 == true) {
                    Navigator.pushNamed(context, DonateNearbyRate.id);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
