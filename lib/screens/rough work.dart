//  TextBox(
//                 hintTitle: 'Your Email',
//                 validateFunction: (String email) {
//                   final bool isValid = EmailValidator.validate(email);
//                   if (isValid) {
//                     return null;
//                   }
//                   return "Email is not valid";
//                 },
//                 labelTitle: '',
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               // TextBox(
//               //   hintTitle: 'Your Password',
//               //   onChanged: (value) {
//               //     password = value;
//               //   },
//               //   errorTitle: 'err',
//               //   labelTitle: 'Password',
//               // ),
//               // SizedBox(
//               //   height: 20.0,
//               // ),
//               // TextBox(
//               //   hintTitle: 'Confirm Password',
//               //   onChanged: (password) {
//               //     password = password;
//               //   },
//               //   errorTitle: 'err',
//               //   labelTitle: 'Confirm',
//
//          // ),
//  Center(
//                   child: Text(
//                     'By signing up, you agree to EasyDon8’s',
//                     style: TextStyle(
//                       fontFamily: 'Nunito',
//                       fontSize: 16.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Text(
//                     'Terms of Service and Privacy Policy',
//                     style: TextStyle(
//                       fontFamily: 'Nunito',
//                       fontSize: 16.0,
//                       color: Color(0xFF2B468B),
//                     ),
//                   ),
//                 ),
import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  const TextBox({
    required this.hintTitle,
    required this.validateFunction,
    required this.labelTitle,
  });

  final String hintTitle;
  final String labelTitle;
  final Function validateFunction;

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //    autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _controller,
      onChanged: (value) {},
      validator: (e) {
        widget.validateFunction(e);
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE5E5E5), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        labelText: widget.labelTitle,
        hintText: widget.hintTitle,
        hintStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 16.0,
          color: Color(0xFFE5E5E5),
        ),
        labelStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 16.0,
          color: Color(0xFFE5E5E5),
        ),
      ),
    );
  }
}
