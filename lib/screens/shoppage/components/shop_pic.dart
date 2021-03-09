import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ShopPic extends StatelessWidget {
  const ShopPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(200),
      child: Stack(
        overflow: Overflow.visible,
        children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(6),
            child: Center(
              
              child: Image.asset("assets/images/tshirt.png")),
          ),
         
            
           
          Container(
          
              alignment: Alignment.bottomCenter,
            
            height: getProportionateScreenWidth(230),
              /*child: ClipRRect(
               
                  
                  child: Container(
                   height: getProportionateScreenWidth(35),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
              color:kSecondaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))
                    ),
                                          child: Text("West Side Shopping Store",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.7)
                    ),),
                  
                ),
              ),*/
            ),
                      ],
      ),
    );
  }
}