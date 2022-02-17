// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'textbox.dart';
import 'NormalButton.dart';

class SignUp extends StatefulWidget {
  static const String id = 'sign_up';
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/Group 2.png'),
              height: 100.0,
              width: 100.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'What Should We Call You?',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextBox(hintTitle: 'Your First Name'),
            SizedBox(
              height: 20.0,
            ),
            TextBox(hintTitle: 'Your Last Name'),
            SizedBox(
              height: 200.0,
            ),
            NormalButton(
                title: 'PROCEED', colour: Color(0xFF2B468B), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
