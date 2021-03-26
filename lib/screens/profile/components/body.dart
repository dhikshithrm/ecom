import 'package:ecom/constants.dart';
import 'package:ecom/screens/profile/components/profile_menu.dart';
import 'package:ecom/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height:20),
          ProfileMenu(
            icon: "assets/icons/User Icon.svg",text: "My Account",
            press: (){},
          ),
          ProfileMenu(
            icon: "assets/icons/Bell.svg",text: "Notifications",
            press: (){},
          ),
          ProfileMenu(
            icon: "assets/icons/Settings.svg",text: "Settings",
            press: (){},
          ),
          ProfileMenu(
            icon: "assets/icons/Question mark.svg",text: "Help Center",
            press: (){},
          ),
          ProfileMenu(
            icon: "assets/icons/Log out.svg",text: "Log Out",
            press: (){},
          ),
        ],
        
      ),
    );
  }
}


