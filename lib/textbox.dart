// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({required this.hintTitle});
  final String hintTitle;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE5E5E5), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        hintText: hintTitle,
        hintStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 16.0,
          color: Color(0xFFE5E5E5),
        ),
      ),
    );
  }
}
