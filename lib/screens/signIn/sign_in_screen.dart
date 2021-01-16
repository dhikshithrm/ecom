import 'package:ecom/screens/signIn/components/body.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sign in")),
        actions: [
          Container(width: 20,)
        ],
        ),
        body: Body(),
    );
  }
 }