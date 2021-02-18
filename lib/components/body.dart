import 'package:ecom/constants.dart';
import 'package:ecom/screens/signIn/sign_in_screen.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import '../redux/appState.dart';
import '../components/splash_content.dart';
import 'default_button.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = AppState().splashData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
          children: [
            Expanded(
              flex: 3,
              child:
    PageView.builder(
  
                  onPageChanged: (value){
  
                    setState(() {
  
                      currentPage = value;
  
                    });
  
                  },
  
                  itemCount: splashData.length,
  
                  itemBuilder: (context,index)=>SplashContent(
  
                    image: splashData[index]["image"],
  
                    text: splashData[index]["text"],
  
                    )
  
                  ),

              ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index))
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(text: "Continue",press: (){
                      Navigator.of(context).pushNamed(SignInScreen.routeName);
                    },),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
      ),
        ),
    );
  }

AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
       duration: kAnimationDuration,
       margin: EdgeInsets.only(right: 5),
       height: 6,
       width: currentPage ==index? 23 : 6,
       decoration: BoxDecoration(
          color: currentPage ==index? kPrimaryColor:Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)
        )
     );
  }
}

