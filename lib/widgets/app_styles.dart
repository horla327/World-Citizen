// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../screens/constants.dart';

class AppStyles {
  static final appInputTextStyle = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static final appInputHintTextStyle = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 16.0,
    color: Color(0xFFE5E5E5),
  );
  static final walkThrough2SubTitleStyle = TextStyle(
      fontFamily: 'Nunito',
      fontSize: 16.0,
      color: Constants.darkTextColor,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400);
  static final appInputLabelTextStyle = TextStyle(
    fontFamily: 'Nunito',
    color: Constants.inputLableColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
