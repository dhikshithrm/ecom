import 'package:ecom/components/custom_bottom_nav_bar.dart';
import 'package:ecom/screens/message/components/body.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class MessageScreen extends StatelessWidget {
   static String routeName = "/message";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Customer Service"),
      ),
      body: Body(),
       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message,),
    );
  }
}