import 'package:ecom/models/Favourites.dart';
import 'package:ecom/models/shop.dart';
import 'package:ecom/screens/shoppage/components/shop_card.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class FavouriteShops extends StatefulWidget {
  @override
  _FavouriteShopsState createState() => _FavouriteShopsState();
}

class _FavouriteShopsState extends State<FavouriteShops> {
  @override
 
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           ...List.generate(demoShops.length, (index) => ShopCard(
                shop: demoShops[index],
                press: (){},
                
                )),
        ],
      ),
    );
  }
}

