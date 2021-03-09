import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class ShopDetails extends StatelessWidget {
  const ShopDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                   height: getProportionateScreenWidth(35),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
              color:kSecondaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))
                    ),
                                          child: Text("West Side Shopping Store",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.7)
                    ),),
                  
                ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical:getProportionateScreenWidth(20),
          horizontal: getProportionateScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                 padding: EdgeInsets.symmetric(horizontal:14,vertical: 5),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Icon(Icons.image,color:kPrimaryColor,size: 20,),
                    SizedBox(width:5),
                    Text("images",
               ),
                  ],
                )),
                 Container(
                 padding: EdgeInsets.symmetric(horizontal:14,vertical: 5),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Icon(Icons.star,color:kPrimaryColor,size: 20),
                    SizedBox(width:5),
                    Text("Ratings",
                    ),
                  ],
                )),
                 Container(
                 padding: EdgeInsets.symmetric(horizontal:14,vertical: 5),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag_outlined,size: 20,color:kPrimaryColor),
                    SizedBox(width:5),
                    Text("products",
                    ),
                  ],
                )),
            ],
          ),
        ),
      ],
    );
  }
}
