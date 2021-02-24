import 'package:ecom/screens/details_screen/details_screen.dart';
import 'package:ecom/screens/home/components/product_card.dart';
import 'package:ecom/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:ecom/models/Product.dart';
import '../../../size_config.dart';
class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SectionTitle(text: "Popular Products",
     press: (){}),
     SizedBox(height:getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                      child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) => ProductCard(
                product: demoProducts[index],
                press: ()=>Navigator.pushNamed(context, DetailsScreen.routeName,
                arguments: ProductDetailsArguments(product: demoProducts[index])),)),
              SizedBox(width:getProportionateScreenWidth(20))
            ],
          ),
        ),
      ],
    );
  }
}