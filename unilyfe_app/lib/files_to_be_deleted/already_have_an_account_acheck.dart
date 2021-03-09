import 'package:flutter/material.dart';
//import 'package:unilyfe_app/Signup/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);
  final bool login;
  final Function press;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Don’t have an Account ? ' : 'Already have an Account ? ',
          style: TextStyle(color: Color(0xFFF46C6B)),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: TextStyle(
              color: Color(0xFFF46C6B),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}