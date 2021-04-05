import 'package:ecom/components/custom_bottom_nav_bar.dart';
import 'package:ecom/constants.dart';
import 'package:ecom/screens/Favourites/components/Body.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
import 'components/favourite_products.dart';
import 'components/favourite_shops.dart';

class FavouritesScreen extends StatefulWidget {
  static String routeName = "/favourites";
  @override
  _FavouritesScreenState createState() =>  _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> with SingleTickerProviderStateMixin{
     TabController _tabController;

  

  @override
    void initState(){
    super.initState();
    _tabController=TabController(initialIndex: 0,length: 2,vsync: this);
  }
  
   TabState selectedTab;
  
 
  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Colors.black; 

    return Scaffold(
      
             appBar: AppBar(
        title: Text("Favourites"),
        bottom: TabBar(
          labelColor:kPrimaryColor,
          labelStyle: TextStyle(fontWeight: FontWeight.w600,),
          unselectedLabelColor:Colors.black,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400,),
          indicatorColor: kPrimaryColor,
          controller: _tabController,
          tabs:<Widget>[
            Tab(
              
             child: Text('Products',
             /*style: TextStyle(
               color: TabState.products == selectedTab 
            ?kPrimaryColor
            :inActiveColor,)*/
                ),
            ),
           
            Tab(
             child: Text('Shops',
            /* style: TextStyle(color: 
              TabState.products == selectedTab 
            ?kPrimaryColor
            :inActiveColor,)*/
            ),)
            

           
          ],
        
      ),
      ),
      body:TabBarView(
        
 
       controller: _tabController,
       children: <Widget>[
         FavouriteProducts(),
         
         FavouriteShops()
         
         
         
         
                ],      
    ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite
      ,),

      
    );
  }
}