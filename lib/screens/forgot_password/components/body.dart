import 'package:ecom/components/default_button.dart';
import 'package:ecom/components/form_error.dart';
import 'package:ecom/components/no_account_text.dart';
import 'package:ecom/screens/signIn/components/customSvgIcon.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
             children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text(
                  "please enter your email and we will send\n you a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                ForgotPasswordForm(),
            ]
        ),
          ),
      ),
    );
  }
 }
 
 class ForgotPasswordForm extends StatefulWidget {
   @override
   _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
 }
 
 class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
   String email;
   List<String> errors=[];
   final _formKey = GlobalKey<FormState>();
   @override
   Widget build(BuildContext context) {
     return Form(
       child: Column(
         children: [TextFormField(
           keyboardType: TextInputType.emailAddress,
           onSaved: (newValue) => email = newValue,
           onChanged: (value){
             if(value.isNotEmpty && errors.contains(kEmailNullError)){
               setState(() {
               errors.remove(kEmailNullError);
             });
             }else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
               setState(() {
                 errors.remove(kInvalidEmailError);
               });
             }
             return null;
           },
           validator: (value){
             if(value.isEmpty && !errors.contains(kEmailNullError)){
               setState(() {
               errors.add(kEmailNullError);
             });
             }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
               setState(() {
                 errors.add(kInvalidEmailError);
               });
             }
             return null;
           },
           decoration: InputDecoration(
             labelText: "Email",
             hintText: "Enter your email",
             suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",)
           )
         ),
         SizedBox(height: getProportionateScreenHeight(30)),
         FormError(errors: errors),
         SizedBox(height: SizeConfig.screenHeight * 0.1),
         DefaultButton(text: "Continue", press: (){
           if(_formKey.currentState.validate()){
             _formKey.currentState.save();
           }
         },),
         SizedBox(height: SizeConfig.screenHeight * 0.1),
         NoAccountText()
         ],
       )
     );
   }
 }