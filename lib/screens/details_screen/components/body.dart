import 'package:ecom/components/default_button.dart';
import 'package:ecom/constants.dart';
import 'package:ecom/models/Product.dart';
import 'package:ecom/screens/details_screen/components/product_description.dart';
import 'package:ecom/screens/details_screen/components/product_images.dart';
import 'package:ecom/screens/details_screen/components/top_rounded_container.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key,@required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return 
           SingleChildScrollView(
                        child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
              color: Colors.white,
           child:   Column(
          children: [ProductDescription(product: product,
          pressOnSeeMore:(){} ,),
         
           
        ]
          ),
          
          ) ,
           Padding(
             padding:  EdgeInsets.only(top: getProportionateScreenWidth(50)),
             child: Container(
               width: getProportionateScreenWidth(300),
               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
               decoration: BoxDecoration(
                 
                 color:kPrimaryColor,
                 borderRadius: BorderRadius.circular(50)
               ),
               child: DefaultButton(text:"buy now")),
           )
          
        ],
      
    ),
           );
  }
}


