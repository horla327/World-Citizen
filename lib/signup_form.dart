// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, import_of_legacy_library_into_null_safe, unnecessary_new

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:worldcitizen/screens/sign_in.dart';
import 'widgets/NormalButton.dart';
import 'screens/signup2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'screens/sign_in.dart';
import 'widgets/textbox.dart';

class SignUpForm extends StatefulWidget {
  static const String id = 'sign_up_form';
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            right: 30.0,
            top: 30.0,
          ),
          child: Form(
            key: formKey,
            //autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
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
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Sign Up',
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
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign In',
                                style: TextStyle(
                                  fontSize: 16.00,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, SignInForm.id);
                                  }),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55.00,
                  ),
                  Text(
                    'Create your account',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  TextInputWidget(
                    textEditingController: _emailController,
                    obscure: false,
                    hintText: "Your Email",
                    lableText: "email",
                    validator: (value) {
                      final bool isValid = EmailValidator.validate(value!);
                      if (isValid) {
                        return null;
                      }
                      return "Please enter a valid email address";
                    },
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  TextInputWidget(
                    textEditingController: _passwordController,
                    obscure: true,
                    hintText: "Your Password",
                    lableText: "password",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Re-Enter New Password";
                      } else if (value.length < 8) {
                        return "This password is weak";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  TextInputWidget(
                    obscure: true,
                    textEditingController: _passwordConfirmController,
                    hintText: 'Confirm Password',
                    lableText: 'confirm password',
                    validator: (value) {
                      if (value != _passwordController.text) {
                        return 'Password does not match';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'By signing up, you agree to EasyDon8’s',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms of Service',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                            color: Color(0xFF2B468B),
                          ),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy Policy',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                            color: Color(0xFF2B468B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.00,
                  ),
                  NormalButton(
                    title: 'SIGN UP',
                    colour: Color(0xFF2B468B),
                    onPressed: () async {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }

                      setState(() {
                        showSpinner = true;
                      });

                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim());
                        if (newUser != null) {
                          Navigator.pushNamed(context, SignUp.id);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// try {
//                         final newUser =
//                             await _auth.createUserWithEmailAndPassword(
//                                 email: email, password: password);
//                         if (newUser != null) {
//                           Navigator.pushNamed(context, SignUp.id);
//                         }
//                         setState(() {
//                           showSpinner = false;
//                         });
//                       } catch (e) {
//                         print(e);
//                       }

// if (formKey.currentState!.validate()) {
//                         Navigator.pushNamed(context, SignUp.id);
//                       }
//                       Future.delayed(Duration(seconds: 4), () {
//                         setState(() {
//                           showSpinner = false;
//                         });
//                       });
