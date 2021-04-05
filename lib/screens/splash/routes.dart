

import 'package:ecom/screens/Favourites/favourites_screen.dart';
import 'package:ecom/screens/cart/cart_screen.dart';
import 'package:ecom/screens/details_screen/details_screen.dart';
import 'package:ecom/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecom/screens/home/home_screen.dart';
import 'package:ecom/screens/message/message_screen.dart';
import 'package:ecom/screens/profile/profile_screen.dart';
import 'package:ecom/screens/shoppage/shop_screen.dart';
import 'package:ecom/screens/signIn/sign_in_screen.dart';
import 'package:ecom/screens/signup/sign_up_screen.dart';
import 'package:ecom/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = {
  SplashsScreen.routeName : (context) => SplashsScreen(),
  SignInScreen.routeName : (context)=> SignInScreen(),
  ForgotPasswordScreen.routeName : (context)=> ForgotPasswordScreen(),
  SignUpScreen.routeName : (context)=> SignUpScreen(),
  HomeScreen.routeName:(context) =>HomeScreen(),
  DetailsScreen.routeName:(context)=>DetailsScreen(),
  CartScreen.routeName:(context)=>CartScreen(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),
  ShopScreen.routeName:(context)=>ShopScreen(),
  MessageScreen.routeName:(context)=>MessageScreen(),
  FavouritesScreen.routeName:(context)=>FavouritesScreen(),
};