

import 'package:ecom/models/Favourites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'fav_pro_card.dart';
import '../../../size_config.dart';

class FavouriteProducts extends StatefulWidget {
  @override
  _FavouriteProductsState createState() => _FavouriteProductsState();
}

class _FavouriteProductsState extends State<FavouriteProducts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
              ...List.generate(demoFavProducts.length, (index) => FavProductCard(
                favProducts: demoFavProducts[index],
                
                
                )),
          ],
        ),
          
            
      ),
    );
  }
}