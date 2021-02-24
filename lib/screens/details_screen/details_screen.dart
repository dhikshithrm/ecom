

import 'package:ecom/components/rounded_icon_btn.dart';
import 'package:ecom/models/Product.dart';
import 'package:ecom/screens/home/home_screen.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecom/screens/details_screen/components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName ="/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body:Body(product:arguments.product)
    );
  }
}



class ProductDetailsArguments{
  final Product product;

  ProductDetailsArguments({@required this.product});
}