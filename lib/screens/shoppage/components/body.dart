import 'package:ecom/models/Product.dart';
import 'package:ecom/screens/details_screen/components/top_rounded_container.dart';
import 'package:ecom/screens/home/components/popular_products.dart';
import 'package:ecom/screens/shoppage/components/shop_desc.dart';
import 'package:ecom/screens/shoppage/components/shop_details.dart';
import 'package:ecom/screens/shoppage/components/shop_images.dart';
import 'package:ecom/screens/shoppage/components/shop_pic.dart';
import 'package:ecom/screens/shoppage/components/shop_products.dart';
import 'package:ecom/screens/shoppage/components/shop_reviews.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
 
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  get product => null;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
          ShopPic(),
        ShopDetails(),
          Padding(
            padding: EdgeInsets.only(top:getProportionateScreenWidth(10)),
            child: ShopDescription(
              product: product,
              pressOnSeeMore:(){} ,
            ),
          ),
      Padding(
        padding:  EdgeInsets.only(top: getProportionateScreenWidth(20),
        bottom: getProportionateScreenWidth(10)),
        child: ShopProducts(),
      ),
      Padding(
        padding:  EdgeInsets.only(top: getProportionateScreenWidth(20),
        bottom: getProportionateScreenWidth(10)),
        child: ShopImages(),
      ),
      Padding(
        padding:  EdgeInsets.only(top: getProportionateScreenWidth(20),
        bottom: getProportionateScreenWidth(10)),
        child: ShopReviews(),
      ),
         
        ],
      ),
    );
  }
}



