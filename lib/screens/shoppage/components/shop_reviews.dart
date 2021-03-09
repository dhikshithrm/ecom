import 'package:flutter/material.dart';

import 'package:ecom/screens/details_screen/details_screen.dart';
import 'package:ecom/screens/home/components/product_card.dart';
import 'package:ecom/screens/home/components/section_title.dart';

import 'package:ecom/models/Product.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';
class ShopReviews extends StatelessWidget {
  const ShopReviews({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SectionTitle(text: "Ratings and reviews",
     press: (){}),
     SizedBox(height:getProportionateScreenWidth(20)),
     Container(
       height: getProportionateScreenWidth(150),
       child: Row(children: [
         Padding(
           padding:  EdgeInsets.symmetric(
           horizontal: getProportionateScreenWidth(30)),
           child: Column(
             children: [
               Text("5.0",style: TextStyle(fontSize: 50,color: Colors.black),),
               Row(children: [
                 SvgPicture.asset("assets/icons/Star Icon.svg"),
                 SizedBox(width: getProportionateScreenWidth(3)),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                  SizedBox(width: getProportionateScreenWidth(3)),
                   SvgPicture.asset("assets/icons/Star Icon.svg"),
                   SizedBox(width: getProportionateScreenWidth(3)),
                    SvgPicture.asset("assets/icons/Star Icon.svg"),
                    SizedBox(width: getProportionateScreenWidth(3)),
                     SvgPicture.asset("assets/icons/Star Icon.svg"),
               ],),
              
             ],
           ),

         ),
    
            ],),
          )  
           ],
         );
       }
     }
     
     class LinearPercentIndicator {
}