import 'package:ecom/components/default_button.dart';
import 'package:ecom/components/formFields.dart';
import 'package:ecom/components/form_error.dart';
import 'package:ecom/screens/signIn/components/customSvgIcon.dart';
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
       key: _formKey,
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
               child: TextFormField(
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
                   print(password);
                   print(conform_password);
                   if(value.isEmpty){
                     return "";
                   }else if(password != conform_password){
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
             ),
             FormError(errors: errors),
             SizedBox(height: getProportionateScreenHeight(40),),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
               child: DefaultButton(
                 text: "Continue",
                 press: (){
                   if(_formKey.currentState.validate()){

                   }
                 }
               ),
             )
         ],
       ),
     );
   }
 }