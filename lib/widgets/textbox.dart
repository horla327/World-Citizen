// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/constants.dart';
import 'app_styles.dart';

class TextInputWidget extends StatelessWidget {
  final String? lableText;
  final String? hintText;
  final TextInputType? textInputType;
  final bool obscure;
  final bool? isPasswordTextField;
  final TextEditingController textEditingController;
  final int? inputLimit;
  final TextInputFormatter? inputFormatter;
  final bool? readOnly;
  final int? maxLines;
  final Widget? prefix;
  final Widget? suffixWidget;
  final String? suffixText;
  final String? Function(String?)? validator;
  final Function? onChanged;
  final TextInputAction? textInputAction;
  const TextInputWidget(
      {Key? key,
      this.lableText,
      this.hintText,
      this.textInputType,
      required this.obscure,
      this.isPasswordTextField,
      required this.textEditingController,
      this.inputLimit,
      this.inputFormatter,
      this.readOnly,
      this.maxLines,
      this.prefix,
      this.suffixWidget,
      this.suffixText,
      this.validator,
      this.onChanged,
      this.textInputAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.appInputTextStyle,
      keyboardType: textInputType,
      obscureText: obscure,
      controller: textEditingController,
      validator: validator,
      onChanged: (value) {},
      decoration: new InputDecoration(
        suffixIcon: suffixWidget,
        counterText: "",
        errorStyle: AppStyles.walkThrough2SubTitleStyle.copyWith(
          color: Colors.red,
          fontSize: 16.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Constants.borderColor, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Constants.redColor, width: 1.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Constants.borderColor, width: 1.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        labelText: lableText,
        hintText: hintText,
        prefix: prefix,
        suffixText: suffixText,
        suffixStyle: AppStyles.appInputHintTextStyle,
        hintStyle: AppStyles.appInputHintTextStyle,
        suffix: suffixWidget,
        labelStyle: AppStyles.appInputLabelTextStyle,
      ),
      textInputAction: textInputAction,
    );
  }
}
