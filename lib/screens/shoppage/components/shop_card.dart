import 'package:ecom/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ShopCard extends StatelessWidget {
  ShopCard({
    Key key, 
    @required this.shop, 
    @required this.press, this.rating,
  }) : super(key: key);
   final Shop shop;
  final GestureTapCallback press;

   final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
     Padding(
      padding:  EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(10),
      vertical: getProportionateScreenWidth(15)),
      child: SizedBox(
        width:getProportionateScreenWidth(360),
        height:getProportionateScreenWidth(230),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Container(
                height: getProportionateScreenWidth(150),
        width:getProportionateScreenWidth(360),

                child: Image.asset(shop.images[0],fit:BoxFit.fitWidth)),
                 Positioned(
                   top: 10,
                   right: 10,
                   child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: (){},
                                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                        width:getProportionateScreenWidth(30),
                        height:getProportionateScreenWidth(30),
                        decoration:BoxDecoration(
                          color: 
                           Colors.white
                          ,
                          shape:BoxShape.circle
                        ),
                        child:SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        color:  Color(0xFFFF4848),)
                      ),
                    ),
                 ),
              Container(
              
                decoration:BoxDecoration(
      

                 gradient:LinearGradient(begin: Alignment.topCenter,
                  end:Alignment.bottomCenter,
                  colors: [
                    Color(0xFF343434).withOpacity(0.05),
                    Color(0xFF343434).withOpacity(0.05),

                  ])
                )
              ),
              Positioned(
                bottom: getProportionateScreenWidth(35),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(shop.name,
                  style: TextStyle(fontSize: 18,color: Colors.black),),
                )),
                 Positioned(
                bottom: getProportionateScreenWidth(15),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(shop.address,
                  style: TextStyle(fontSize: 14,),),
                )),
                 Positioned(
                bottom: getProportionateScreenWidth(5),
                right: getProportionateScreenWidth(5),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Open now',
                  style: TextStyle(fontSize: 12,color: kPrimaryColor),),
                )),
                        Positioned(
                          bottom: getProportionateScreenWidth(40),
                          right: getProportionateScreenWidth(5),
                          child: Container(
                            width:getProportionateScreenWidth(70) ,
          padding: EdgeInsets.symmetric(horizontal:14,vertical: 5),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Colors.white
          ),
          child:Row(children: [
            Text(shop.rating.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(width:5),
          SvgPicture.asset("assets/icons/Star Icon.svg")
          ],)
        ),
                        )
            ],
          ))
      ),
      
    ),
    
      ]
    );
  }
}