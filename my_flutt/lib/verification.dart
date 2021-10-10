import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  var submitButton;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('L0GIN INFO'),
        ),
      ),
    );
  }

  final String labelText;
  final String hintText;
  TextInputType keyboardType;
  bool obscureText;
  Function(String) validator;
  Function(String) onSaved;
  CustomTextField(
      {Key key,
      this.labelText,
      this.hintText,
      this.obscureText: true,
      this.validator,
      this.keyboardType,
      this.submitButton,
      this.onSaved})
      : super(key: key);
}
