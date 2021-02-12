import 'package:ecom/screens/signIn/sign_in_screen.dart';

import 'package:ecom/components/no_account_text.dart';

class AHaveAccount extends NoAccountText{
  @override
  // TODO: implement mainText
  String get mainText => "Already Have An Account?";
  @override
  // TODO: implement subText
  String get subText => "LogIn";
  @override
  // TODO: implement newPage
  String get newPage => SignInScreen.routeName;
}