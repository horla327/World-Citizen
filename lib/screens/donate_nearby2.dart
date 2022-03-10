// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:worldcitizen/widgets/NormalButton.dart';
import 'donation_channel.dart';

class DonateNearbyRate extends StatelessWidget {
  static const String id = 'donate_nearby_rate';
  const DonateNearbyRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Color(0xFF2B468B),
                  onPressed: () {
                    Navigator.pushNamed(context, DonationChannel.id);
                  },
                ),
                Text(
                  'What Do You Think',
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
              height: 30,
            ),
            Text(
              'We care about you too and want to',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'make showing love even easier for you',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'How would you rate your experience?',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/Vector5.png'),
                Image.asset('images/Vector7.png'),
                Image.asset('images/Vector8.png'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Got anything you’d like to tell us?',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              elevation: 2.0,
              shadowColor: Color(0xFFEAE9E9),
              child: Container(
                color: Color(0xFFEAE9E9),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFEAE9E9), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    hintText: 'Feel free to leave a review...',
                    hintStyle: TextStyle(
                      fontFamily: 'Nunito-Italic',
                      fontSize: 12.0,
                    ),
                  ),
                  minLines: 5,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            NormalButton(
                title: 'SUBMIT', colour: Color(0xFF2B468B), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
