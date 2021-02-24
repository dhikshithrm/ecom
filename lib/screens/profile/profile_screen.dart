import 'package:ecom/components/custom_bottom_nav_bar.dart';
import 'package:ecom/constants.dart';
import 'package:ecom/enums.dart';
import 'package:ecom/screens/home/home_screen.dart';
import 'package:ecom/screens/profile/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfileScreen extends StatelessWidget {
  static String routeName ='/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}

