// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:worldcitizen/NormalButton.dart';
import 'package:worldcitizen/sign_in.dart';
import 'package:worldcitizen/textbox.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResetScreen extends StatefulWidget {
  static const String id = 'reset_screen';
  const ResetScreen({Key? key}) : super(key: key);

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  TextEditingController _emailController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Color(0xFF2B468B),
                  onPressed: () {
                    Navigator.pushNamed(context, SignInForm.id);
                  },
                ),
                SizedBox(
                  width: 55.00,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Reset Password',
                        style: TextStyle(
                          fontSize: 16.00,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF2B468B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextInputWidget(
                textEditingController: _emailController,
                obscure: false,
                hintText: "Your Email",
                lableText: "Your email",
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 220,
              height: 80,
              child: NormalButton(
                title: "SEND REQUEST",
                colour: Color(0xFF2B468B),
                onPressed: () {
                  _auth.sendPasswordResetEmail(
                      email: _emailController.text.trim());
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
