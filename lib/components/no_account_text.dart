import 'package:ecom/screens/signup/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  final String mainText = "Don't have an account?";
  final String subText = "Sign Up";
  final String newPage = SignUpScreen.routeName;
  NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(mainText,style: TextStyle(
          fontSize: getProportionateScreenWidth(16),
        ),),
        GestureDetector(
            onTap: (){
              Navigator.of(context).popAndPushNamed(newPage);
            },
            child: Text(subText,style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: kPrimaryColor
          ),),
        ),
      ],
    );
  }
}
