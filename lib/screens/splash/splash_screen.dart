import 'package:ecom/components/body.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
class SplashsScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
 }