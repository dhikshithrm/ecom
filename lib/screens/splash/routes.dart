import 'package:ecom/screens/signIn/sign_in_screen.dart';
import 'package:ecom/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashsScreen.routeName : (context) => SplashsScreen(),
  SignInScreen.routeName : (context)=> SignInScreen(),
};