import 'package:ecom/components/formFields.dart';
import 'package:ecom/screens/signIn/sign_in_screen.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecom/constants.dart';
import 'package:ecom/screens/signIn/components/sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Register Account",
            style: headingStyle,
          ),
          Text(
            "Complete your details or continue \nwith social medial",
            textAlign: TextAlign.center,
          ),
          SignUpForm()
        ],
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
     return Form(
       child: Column(
         children: [
           Padding(
             padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
             child: GenericFormField(
                header: "Email",
                errors: errors,
                header_value: email,
                setState: this.setState,
                trailing_Svgicon: "assets/icons/Mail.svg")
               .buildFormField(),
           ),
           SizedBox(height: getProportionateScreenHeight(30),),
           Padding(
               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
               child: GenericFormField(
                header: "Password",
                errors: errors,
                header_value: password,
                setState: this.setState,
                trailing_Svgicon: "assets/icons/Lock.svg")
               .buildFormField(),
             ),
           SizedBox(height: getProportionateScreenHeight(30),),
           Padding(
               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
               child: GenericFormField(
                hint_text: "Re-enter your password",
                header: "Confirm Password",
                errors: errors,
                header_value: password,
                setState: this.setState,
                trailing_Svgicon: "assets/icons/Lock.svg")
               .buildFormField(),
             ),
         ],
       ),
     );
   }
 }