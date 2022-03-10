// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:worldcitizen/donation_channel.dart';
import 'package:worldcitizen/widgets/NormalButton.dart';
import 'pickup_location.dart';

class DonateNearby extends StatelessWidget {
  static const String id = 'donate_nearby';
  const DonateNearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Donate Nearby',
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
              Center(
                child: Text(
                  "Discover collection centers near you",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "and we'd do all the work for you",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.location_on),
                    color: Color(0xFF2B468B),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.pushNamed(context, DonationChannel.id);
                    },
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 220,
                        height: 40,
                        child: Material(
                          elevation: 5.0,
                          shadowColor: Color(0xFF3E3A3A),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              labelText: 'Ajose Street, Maryland',
                              labelStyle: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        width: 220,
                        height: 40,
                        child: Material(
                          elevation: 5.0,
                          shadowColor: Color(0xFF3E3A3A),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              labelText: '32',
                              labelStyle: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 220,
                        height: 70,
                        child: NormalButton(
                            title: 'FIND',
                            colour: Color(0xFF2B468B),
                            onPressed: () {
                              Navigator.pushNamed(context, PickupLocation.id);
                            }),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Available Centres',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
