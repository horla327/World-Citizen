// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:worldcitizen/screens/ResetScreen.dart';
import 'package:worldcitizen/donation_channel.dart';
import 'package:worldcitizen/widgets/NormalButton.dart';
import 'signup_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:worldcitizen/widgets/textbox.dart';

class SignInForm extends StatefulWidget {
  static const String id = 'sign_in_form';
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignInForm> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30.0,
          top: 30.0,
        ),
        child: Form(
          key: formkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                fontSize: 16.00,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, SignUpForm.id);
                                }),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 55.00,
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                    SizedBox(
                      width: 55.00,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Sign In',
                                  style: TextStyle(
                                    fontSize: 16.00,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF2B468b),
                                  ),
                                ),
                              ],
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
                  ],
                ),
                SizedBox(
                  height: 55.00,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 70.0,
                ),
                TextInputWidget(
                  textEditingController: _emailController,
                  obscure: false,
                  hintText: "Your Email",
                  lableText: "Your Email",
                ),
                SizedBox(
                  height: 25.0,
                ),
                TextInputWidget(
                  textEditingController: _passwordController,
                  obscure: true,
                  hintText: "Your Password",
                  lableText: "Your Password",
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ResetScreen.id);
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          color: Color(0xFF2B468B),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        'Remember Me',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.toggle_on),
                      color: Color(0xFF2B468B),
                      iconSize: 50.00,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.0,
                ),
                NormalButton(
                    title: 'SIGN IN',
                    colour: Color(0xFF2B468B),
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim());
                        if (user != null) {
                          Navigator.pushNamed(context, DonationChannel.id);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
