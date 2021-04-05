import 'package:ecom/models/Favourites.dart';
import 'package:ecom/models/Product.dart';
import 'package:flutter/material.dart';

import 'package:ecom/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../constants.dart';
import '../../../size_config.dart';

class FavProductCard extends StatelessWidget {
  const FavProductCard({
    Key key, this.product, this.favProducts,
  }) : super(key: key);
  final Product product;
  final FavProducts favProducts;


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
      child: Row(
        children: [
          SizedBox(
            width:getProportionateScreenWidth(88),
            child:AspectRatio(aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color : Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset(favProducts.product.images[0]),
            ),)
          ),
          SizedBox(
            width:getProportionateScreenWidth(20),
          ),
         Container(
           height: getProportionateScreenHeight(100),
           width: getProportionateScreenWidth(200),
           child: Stack(
             children: [
               Positioned(
                 
                 child: Container(
                   height: 80,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         favProducts.product.title,
                         style:TextStyle(color: Colors.black,fontSize: 16),
                         maxLines: 2,
                       ),
                       SizedBox(height:10),
                      
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text.rich(TextSpan(text:"\$${favProducts.product.price}",
                               style: TextStyle(
                               color: kPrimaryColor),
                              
                               ),
                          
                               ),
                               SizedBox(width: 100,),
                              
                             ],
                           ),
                          
                           
                             
                        
                     ],
                   ),
                 ),
               ),
                Positioned(
                  right: getProportionateScreenHeight(10),
                  bottom: getProportionateScreenHeight(20),
                  child: InkWell(
                                borderRadius: BorderRadius.circular(30),
                                onTap: (){},
                                                child: Container(
                                  padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                                  width:getProportionateScreenWidth(30),
                                  height:getProportionateScreenWidth(30),
                                  //isfavourite missing for color
                                  decoration:BoxDecoration(
                                    color: 
                                     kPrimaryColor.withOpacity(0.15)
                                  ,
                                    shape:BoxShape.circle
                                  ),
                                  child:SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                                  color:
                                   Color(0xFFFF4848),)
                                ),
                            ),
                ),
                   
             ],
           ),
         ),
       
        ],
        
        
      ),
    );
  }
}