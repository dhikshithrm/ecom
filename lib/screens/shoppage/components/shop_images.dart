import 'package:flutter/material.dart';

import 'package:ecom/screens/details_screen/details_screen.dart';
import 'package:ecom/screens/home/components/product_card.dart';
import 'package:ecom/screens/home/components/section_title.dart';

import 'package:ecom/models/Product.dart';
import '../../../size_config.dart';
class ShopImages extends StatelessWidget {
  const ShopImages({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SectionTitle(text: "Photos",
     press: (){}),
     SizedBox(height:getProportionateScreenWidth(20)),
        Container(
          height: getProportionateScreenWidth(200),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(40),
                          vertical: getProportionateScreenWidth(20)),
                          child: Row(
              children: [
                Image.asset("assets/images/splash_1.png"),
                SizedBox(width:getProportionateScreenWidth(20)),
                Image.asset("assets/images/splash_2.png"),
                SizedBox(width:getProportionateScreenWidth(20)),
                Image.asset("assets/images/splash_3.png"),
                SizedBox(width:getProportionateScreenWidth(20)),
                Image.asset("assets/images/shoes2.png"),
                SizedBox(width:getProportionateScreenWidth(20)),
              ],
            ),
                        ),
          ),
        ),
      ],
    );
  }
}