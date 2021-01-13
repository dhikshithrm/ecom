import 'package:flutter/material.dart';
import 'package:ecom/size_config.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: FlatButton(onPressed: press, 
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: kPrimaryColor,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionateScreenHeight(18),
          color: Colors.white,
        ),
      )),
    );
  }
}

