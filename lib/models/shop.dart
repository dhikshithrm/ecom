import 'package:flutter/material.dart';


class Shop{
  final String name;
  final String address;
  final String description;
  final List<String> images;
  final double rating,id;
  final bool isFavourite,isPopular;

 Shop({this.name,
    @required this.address,
    @required this.description,
   @required this.images,
   
      this.rating = 0.0, 
    
   this.id,
      this.isFavourite = false, 
      this.isPopular= false, 
 });
}

List<Shop> demoShops = [
  
  Shop(
    images: [
      "assets/images/shop.jpg",
    ],
   
    id: 2,
    name: "Reliance Super Mart",
    address: "Ichhannath,Surat",
    description: "description",
    rating: 4.1,
    isFavourite: true,
  ),
  Shop(
    
    images: [
      "assets/images/medical store.jpg",
    ],
   
    id: 3,
    name: "Medplus pharmaceuticals",
    address: "Vesu,Surat",
    description: "description",
    rating: 4.5,
    
    isPopular: true,
  ),
  Shop(
    
    images: [
      "assets/images/stationary.jpg",
    ],
   address: "Adajan,Surat",
    name: "Ravechi staionaries",
    id: 4,
    description: "description",
    rating: 4.2,
    isFavourite: true
  ),
  Shop(
    
    images: [
     "assets/images/grocery1.jpg"
      
    ],
    
    id: 1,
    name: "Better Land Grocery",
    address: "Piplod,Surat",
    description:" description",
    rating: 4.8,
    
    isPopular: true,
  ),
];