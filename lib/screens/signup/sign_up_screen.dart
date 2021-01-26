import 'package:ecom/screens/signup/components/body.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatelessWidget {
  static String routeName = "/signup_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
 }