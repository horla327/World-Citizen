// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton(
      {required this.title, required this.colour, required this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          minWidth: 300.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Nunito",
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
