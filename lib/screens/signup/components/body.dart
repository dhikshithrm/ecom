import 'package:ecom/components/default_button.dart';
import 'package:ecom/components/formFields.dart';
import 'package:ecom/components/form_error.dart';
import 'package:ecom/components/social_card.dart';
import 'package:ecom/screens/signIn/components/customSvgIcon.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecom/constants.dart';

import 'already_have_account_text.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
              child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Text(
                  "Register Account",
                  style: headingStyle,
                ),
                Text(
                  "Complete your details or continue \nwith social medial",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: (){},
                      ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: (){},
                      ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: (){},
                      ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                AHaveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
 }

 class SignUpForm extends StatefulWidget {
   @override
   _SignUpFormState createState() => _SignUpFormState();
 }
 
 class _SignUpFormState extends State<SignUpForm> {
   final _formKey = GlobalKey<FormState>();
   String email;
   String password;
   String conform_password;
   final List<String> errors = [];
   
   @override
   Widget build(BuildContext context) {
     GenericFormField passwordFormFeild = GenericFormField(
                header: "Password",
                errors: errors,
                setState: this.setState,
                trailing_Svgicon: "assets/icons/Lock.svg");
     
     return Form(
       key: _formKey,
       child: Column(
         children: [
          GenericFormField(
                header: "Email",
                errors: errors,
                header_value: email,
                setState: this.setState,
                trailing_Svgicon: "assets/icons/Mail.svg")
               .buildFormField(),
           SizedBox(height: getProportionateScreenHeight(30),),
           passwordFormFeild.buildFormField(),
           SizedBox(height: getProportionateScreenHeight(30),),
           TextFormField(
                 obscureText: true,
                 onSaved: (newValue)=> conform_password=newValue,
                 onChanged: (value){
                   if(password== conform_password && errors.contains(kMatchPassError)){
                     setState(() {
                       errors.remove(kMatchPassError);
                     });
                   }
                   setState(() {
                     conform_password = value;
                   });
                 },
                 validator: (value){
                   print(email);
                   print(passwordFormFeild.get_header_value);
                   print(conform_password);
                   if(value.isEmpty){
                     return "";
                   }else if(passwordFormFeild.get_header_value != conform_password){
                     setState(() {
                       errors.add(kMatchPassError);
                     });
                     return "";
                   }
                 },
                 decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Re-enter your password",
                  suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",)
                  )
               ),
             FormError(errors: errors),
             SizedBox(height: getProportionateScreenHeight(40),),
             DefaultButton(
                 text: "Continue",
                 press: (){
                   if(_formKey.currentState.validate()){

                   }
                 }
               ),
         ],
       ),
     );
   }
 }