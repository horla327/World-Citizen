// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:worldcitizen/NormalButton.dart';
import 'package:worldcitizen/donate_nearby2.dart';
import 'package:worldcitizen/pickup_details.dart';

class ConfirmPickUpDetails extends StatelessWidget {
  static const String id = 'confirm_pickup_details';
  const ConfirmPickUpDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
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
                    Navigator.pushNamed(context, PickUpDetails.id);
                  },
                ),
                Text(
                  "Scheduled Pick-up",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF2B468B),
                  ),
                ),
                Image.asset('images/Group 34.png'),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Kindly confirm that this is what you want",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              elevation: 5.0,
              shadowColor: Color(0xFFEAE9E9),
              child: Container(
                color: Color(0xFFEAE9E9),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Pick-up Address",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ContentTextBoxx(
                        contentTitle:
                            "32, Ajose Street, Maryland, Lagos State.          ",
                      ),
                      Text(
                        "Your Pick-up Time",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ContentTextBoxx(
                        contentTitle:
                            "Saturday, July 17 Between 9.00AM - 12.00PM",
                      ),
                      Text(
                        "Number of Bags Expected",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ContentTextBoxx(
                        contentTitle:
                            "5                                                                           ",
                      ),
                      Text(
                        "Note for Driver",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ContentTextBoxx(
                        contentTitle:
                            "Lorem ipsum dolor sit amit lorem sit tat          ",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            NormalButton(
                title: "CONFIRM & SCHEDULE",
                colour: Color(0xFF2B468B),
                onPressed: () {
                  Navigator.pushNamed(context, DonateNearbyRate.id);
                }),
          ],
        ),
      ),
    );
  }
}

class ContentTextBoxx extends StatelessWidget {
  const ContentTextBoxx({required this.contentTitle});
  final String contentTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          contentTitle,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 13.0,
            color: Color(0xFF3E3A3A),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit),
          color: Color(0xFF2B468B),
        ),
      ],
    );
  }
}
