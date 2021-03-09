import 'package:ecom/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ShopDescription extends StatelessWidget {
  const ShopDescription({
    Key key, this.product, this.pressOnSeeMore,
  }) : super(key: key);
final Product product;
final GestureTapCallback pressOnSeeMore;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
    
    Align(
      alignment: Alignment.centerRight,
      child:Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(15)),
        width: getProportionateScreenWidth(64),
        decoration: BoxDecoration(
          color:Color(0xFFFFE6E6),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20))
        ),
        child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
        color: Color(0xFFFF4848)),
      )
    ),
    Padding(
      padding:  EdgeInsets.only(left: getProportionateScreenWidth(20),
      right: getProportionateScreenWidth(64)),
      child: Text("It was the kind of shop you wondered about, that you felt your soles move toward, as if in there upon a shelf was a piece of your own life-puzzle.",
      maxLines: 3,
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),
      vertical: 10),
      child: GestureDetector(
        onTap:pressOnSeeMore ,
                      child: Row(children: [
          Text("See More Details",style: TextStyle(color: kPrimaryColor,
          fontWeight: FontWeight.w600),),
          Icon(Icons.arrow_forward_ios,size:12,color: kPrimaryColor,)
        ],),
      ),
    )
      ],
    );
  }
}
