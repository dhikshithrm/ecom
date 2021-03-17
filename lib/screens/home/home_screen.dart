
import 'package:ecom/components/custom_bottom_nav_bar.dart';
import 'package:ecom/enums.dart';
import 'package:ecom/screens/home/components/body.dart/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home,),
    );
  }
}

