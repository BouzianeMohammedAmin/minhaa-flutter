import 'package:flutter/material.dart';

class SignInPpage extends StatefulWidget {
  SignInPpage({Key key}) : super(key: key);

  @override
  _SignInPpageState createState() => _SignInPpageState();
}

class _SignInPpageState extends State<SignInPpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
      ),
    );
  }
}
