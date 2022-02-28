// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'confirm_pickupdetails.dart';
import 'NormalButton.dart';
import 'pickup_location.dart';

class PickUpDetails extends StatelessWidget {
  static const String id = 'pickup_details';
  const PickUpDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
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
                    Navigator.pushNamed(context, PickupLocation.id);
                  },
                ),
                Text(
                  "Schedule a Pick-up",
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                color: Color(0xFFFA9746),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Due to logistics and for proper planning, please note',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ' that our pickup services only function on Saturdays',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Time",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "How many bags of clothes?",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Note for Driver (Optional)",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
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
                  minLines: 4,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            NormalButton(
                title: 'CONTINUE',
                colour: Color(0xFF2B468B),
                onPressed: () {
                  Navigator.pushNamed(context, ConfirmPickUpDetails.id);
                }),
          ],
        ),
      ),
    );
  }
}
