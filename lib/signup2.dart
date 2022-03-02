// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:worldcitizen/welcome_page.dart';
import 'textbox.dart';
import 'NormalButton.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class SignUp extends StatefulWidget {
  static const String id = 'sign_up';
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    firstNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Form(
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('images/Group 2.png'),
                    height: 100.0,
                    width: 100.0,
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Text(
                    'What Should We Call You?',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  TextInputWidget(
                    textEditingController: firstNameController,
                    obscure: false,
                    hintText: "Your First Name",
                    lableText: "Your First Name",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextInputWidget(
                    textEditingController: lastNameController,
                    obscure: false,
                    hintText: "Last Name",
                    lableText: "Your Last Name",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 200.0,
                  ),
                  NormalButton(
                      title: 'PROCEED',
                      colour: Color(0xFF2B468B),
                      onPressed: () {
                        setState(() {
                          showSpinner = true;
                        });
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  WelcomePage(firstNameController.text),
                            ),
                          );
                        }
                        Future.delayed(Duration(seconds: 4), () {
                          setState(() {
                            showSpinner = false;
                          });
                        });
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
