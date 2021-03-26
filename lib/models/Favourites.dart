import 'package:flutter/material.dart';
import 'package:ecom/models/Product.dart';
import 'shop.dart';

class FavProducts{
  final Product product;
  

  FavProducts({@required this.product});

  
}

List<FavProducts> demoFavProducts=[
  FavProducts(product: demoProducts[2],),
  FavProducts(product: demoProducts[0],),
  FavProducts(product: demoProducts[3],),
  FavProducts(product: demoProducts[1],),


];

class FavShops{
  final Shop shop;
  

  FavShops({@required this.shop});

  
}

List<FavShops> demoFavShops=[
  
  
  FavShops(shop: demoShops[1],),
  FavShops(shop: demoShops[3],),


];