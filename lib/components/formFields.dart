import 'package:ecom/constants.dart';
import 'package:ecom/screens/signIn/components/customSvgIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GenericFormField{
  String header_value;
  final String header;
  final String trailing_Svgicon;
  final List<String> errors;
  final Function(void) setState;
  final String hint_text;
  final Function(String) validator;

  GenericFormField({this.validator,this.hint_text,this.header_value, this.header, this.trailing_Svgicon, this.errors, this.setState});

  TextFormField buildFormField() {
     return TextFormField(
           keyboardType: TextInputType.emailAddress,
           obscureText: header.toLowerCase()=="password" || header.toLowerCase()=="confirm password",
           onSaved: (newValue) => this.header_value = newValue,
           onChanged: (value){
             if(value.isNotEmpty && errors.contains(k)){
               setState(() {
               this.errors.remove(kEmailNullError);
             });
             }else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
               setState(() {
                 this.errors.remove(kInvalidEmailError);
               });
             }
             return null;
           },
           validator: (value){
             if(value.isEmpty && !this.errors.contains(kEmailNullError)){
               setState(() {
               errors.add(kEmailNullError);
             });
             }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
               setState(() {
                 this.errors.add(kInvalidEmailError);
               });
             }
             return null;
           },
           decoration: InputDecoration(
             labelText: this.header,
             hintText: hint_text??"Enter your ${this.header}",
             suffixIcon: CustomSuffixIcon(svgIcon: this.trailing_Svgicon,)
           )
         );
   }
}
