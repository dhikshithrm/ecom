import 'package:ecom/components/customSvgIcon.dart';
import 'package:ecom/components/default_button.dart';
import 'package:ecom/components/form_error.dart';
import 'package:ecom/constants.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28)
                ),
              ),
              Text(
                "Sign in with your email and password \nor continue with social accounts",
                textAlign: TextAlign.center,
              ),
              SignForm(),
            ],
            ),
        ),
      ) 
      );
  }
 }

 
 class SignForm extends StatefulWidget {
   @override
   _SignFormState createState() => _SignFormState();
 }
 
 class _SignFormState extends State<SignForm> {
   String email;
   String password;
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
           FormError(errors: errors),
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

