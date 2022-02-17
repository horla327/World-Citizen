// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'NormalButton.dart';

class SignUpForm extends StatefulWidget {
  static const String id = 'sign_up_form';
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 45.0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20.00,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF2B468b),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFF2B468b),
                      size: 40.0,
                    ),
                  ],
                ),
                SizedBox(
                  width: 55.00,
                ),
                Text(
                  '|',
                  style: TextStyle(fontSize: 50.0, color: Colors.grey),
                ),
                SizedBox(
                  width: 55.00,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 20.00,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 50.00,
            ),
            Text(
              'Create your account',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2B468B), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'Your Email',
                hintStyle: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16.0,
                  color: Color(0xFF2B468B),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2B468B), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'Your Password',
                hintStyle: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16.0,
                  color: Color(0xFF2B468B),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2B468B), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16.0,
                  color: Color(0xFF2B468B),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: Text(
                'By signing up, you agree to EasyDon8’s',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16.0,
                  color: Color(0xFF2B468B),
                ),
              ),
            ),
            Center(
              child: Text(
                'Terms of Service and Privacy Policy',
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
              title: 'SIGN UP',
              colour: Color(0xFF2B468B),
              onPressed: () {
                Navigator.pushNamed(context, SignUpForm.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
