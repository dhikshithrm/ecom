import 'package:ecom/constants.dart';
import 'package:ecom/screens/signIn/components/customSvgIcon.dart';
import 'package:flutter/material.dart';


class GenericFormField{
  String header_value;
  final String header;
  final String trailing_Svgicon;
  final List<String> errors;
  final void Function(void Function() fn) setState;
  final String hint_text;
  
  GenericFormField({this.hint_text,this.header_value, this.header, this.trailing_Svgicon, this.errors, this.setState});

  TextFormField buildFormField() {
    bool isPassword = (header.toLowerCase()=="password");
    
     return TextFormField(
           keyboardType: TextInputType.emailAddress,
           obscureText: isPassword,
           onSaved: (newValue) => this.header_value = newValue,
           onChanged: (value){
             if(value.isNotEmpty && errors.contains(isPassword?kPassNullError:kEmailNullError)){
               setState(() {
                this.errors.remove(isPassword?kPassNullError:kEmailNullError);
                });
             }else if(isPassword?value.length>3:(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError))){
               setState(() {
                 this.errors.remove(isPassword?kShortPassError:kInvalidEmailError);
               });
             }
             return null;
           },
           validator: (value){
             if(value.isEmpty && !this.errors.contains(isPassword?kPassNullError:kEmailNullError)){
               setState(() {
               errors.add(isPassword?kPassNullError:kEmailNullError);
             });
             }else if(isPassword?value.length<4:(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError))){
               setState(() {
                 this.errors.add(isPassword?kShortPassError:kInvalidEmailError);
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
