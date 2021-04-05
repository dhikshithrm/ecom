import 'package:ecom/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import 'package:ecom/models/Favourites.dart';
import 'package:ecom/models/shop.dart';
import 'package:ecom/screens/shoppage/components/shop_card.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ShopsNearBy extends StatefulWidget {
  @override
  _ShopsNearByState createState() => _ShopsNearByState();
}

class _ShopsNearByState extends State<ShopsNearBy> {
  @override
  

  
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
            child: Row(
              children: [
                Text('Shops around you',style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.black),),
              ],
            ),
          ),
              
           ...List.generate(demoShops.length, (index) => ShopCard(
                shop: demoShops[index],
                press: (){},
                
                )),
        ],
      ),
    );
  }
}

