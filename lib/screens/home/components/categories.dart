import 'package:ecom/constants.dart';
import 'package:ecom/screens/shoppage/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> categories = [
      {"icon":"assets/icons/Flash Icon.svg","text":"Grocery"},
      {"icon":"assets/icons/Bill Icon.svg","text":"Medical"},
      {"icon":"assets/icons/Game Icon.svg","text":"Staion\naries"},
      {"icon":"assets/icons/Gift Icon.svg","text":"Super Marts"},
      {"icon":"assets/icons/Flash Icon.svg","text":"Clothing"},

    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(categories.length,
           (index) => CategoryCard(
             icon: categories[index]["icon"], 
             text: categories[index]["text"],
              press: (){}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,

  }) : super(key: key);

  final String  icon,text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> Navigator.pushNamed(context, ShopScreen.routeName),
          child: SizedBox(
        width: getProportionateScreenWidth(57),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color:Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(20)),
                child: SvgPicture.asset(icon,color: kPrimaryColor,),
              ),
            ),
            SizedBox(height: 5,),
            Text(text,textAlign: TextAlign.center,)
          ],
        )
        
      ),
    );
  }
}
