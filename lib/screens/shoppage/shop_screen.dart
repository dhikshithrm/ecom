import 'package:ecom/models/Product.dart';
import 'package:ecom/screens/details_screen/components/custom_app_bar.dart';
import 'package:ecom/screens/shoppage/components/body.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  static String routeName = "/shop";
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       backgroundColor: Color(0xFFF5F6F9),
       appBar: CustomAppBar(5),
      body: Body(),
    );
  }
}

