import 'package:flutter/material.dart';
import 'package:my_flutt/verification.dart';
import 'package:my_flutt/validate.dart';

class Login extends StatefulWidget {
  createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  Validate validate = Validate();
  String email = '';
  String password = '';
  //Widget submitButton;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0.0),
      child: Column(
        children: [
          CustomTextField(
            keyboardType: TextInputType.emailAddress,
            hintText: 'You@Yahoo.com',
            labelText: 'Email Address',
            validator: validate.validateEmail,
            onSaved: (String value) {
              email = value;
            },
          ),
          CustomTextField(
            hintText: 'Password',
            labelText: 'Password',
            validator: validate.validatePassword,
            obscureText: true,
            onSaved: (String value) {
              email = value;
            },
          ),
        ],
      ),
    );
  }

  Widget submitButton() {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => Colors.blue),
      ),
      child: Text('Submit'),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => Container()));
      },
    );
  }
}
