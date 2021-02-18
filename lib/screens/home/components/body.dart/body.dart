import 'package:ecom/constants.dart';
import 'package:ecom/models/Product.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../categories.dart';
import '../discount_banner.dart';
import '../home_header.dart';
import '../icon_btn_with_counter.dart';
import '../popular_products.dart';
import '../product_card.dart';
import '../section_title.dart';
import '../serach_field.dart';
import '../special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
              child: Column(
          children:[
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),

           
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),

          ]
        ),
      ),
      
    );
  }
}









