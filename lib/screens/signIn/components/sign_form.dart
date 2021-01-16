import 'package:ecom/components/default_button.dart';
import 'package:ecom/components/form_error.dart';
import 'package:ecom/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'customSvgIcon.dart';

class SignForm extends StatefulWidget {
   @override
   _SignFormState createState() => _SignFormState();
 }
 
 class _SignFormState extends State<SignForm> {
   String email;
   String password;
   bool remember = false;
   final _formKey = GlobalKey<FormState>();
   final List<String> errors = [];
   @override
   Widget build(BuildContext context) {
     return Form(
       key: _formKey,
       child: Column(
         children: [
           buildEmailFormField(),
           SizedBox(height: getProportionateScreenHeight(20)),
           buildPasswordFormField(),
           SizedBox(height: getProportionateScreenHeight(20),),
           Row(
             children: [
               Checkbox(
                 activeColor: kPrimaryColor,
                 value: remember,
                 onChanged: (value){
                   setState(() {
                     remember = value;
                   });
                 } ),
               Text("Remember me"),
               Spacer(),
               GestureDetector(
                 onTap: ()=> Navigator.of(context).popAndPushNamed(ForgotPasswordScreen.routeName),
                   child: Text(
                   "Forgot Password",
                   style: TextStyle(decoration: TextDecoration.underline),
                 ),
               )
             ],),
           FormError(errors: errors),
           SizedBox(height: getProportionateScreenHeight(20),),
           
           DefaultButton(text: "Continue",press: (){
             if(_formKey.currentState.validate()){
               _formKey.currentState.save();
             }
           },)
         ],
       ),
     );
   }

   TextFormField buildPasswordFormField() {
     return TextFormField(
           onSaved: (newValue) => password = newValue,
           onChanged: (value){
             if(value.isNotEmpty && errors.contains(kPassNullError)){
               setState(() {
                 errors.remove(kPassNullError);
               });
             }else if(value.length >=4 && errors.contains(kShortPassError)){
               setState(() {
                 errors.remove(kShortPassError);
               });
             }
           },
           validator: (value){
             if(value.isEmpty && !errors.contains(kPassNullError)){
               setState(() {
                 errors.add(kPassNullError);
               });
             }else if(value.length < 5 && !errors.contains(kShortPassError)){
               setState(() {
                 errors.add(kShortPassError);
               });
             }
           },
           obscureText: true,
           keyboardType: TextInputType.emailAddress,
           decoration: InputDecoration(
             labelText: "Password",
             hintText: "Enter your password",
             suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",)
           )
         );
   }

   TextFormField buildEmailFormField() {
     return TextFormField(
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
         );
   }
 }