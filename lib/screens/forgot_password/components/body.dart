import 'package:ecom/components/default_button.dart';
import 'package:ecom/components/formFields.dart';
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
         children: [
         GenericFormField(
           errors: errors,
           header: "Email",
           header_value: email,
           setState: this.setState,
           trailing_Svgicon: "assets/icons/Mail.svg"
         ).buildFormField(),
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