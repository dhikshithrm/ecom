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
  final String password;

  String get get_header_value => this.header_value;

  
  GenericFormField({this.password,this.hint_text,this.header_value, this.header, this.trailing_Svgicon, this.errors, this.setState});

  TextFormField buildFormField() {
    bool isPassword = (header.toLowerCase()=="password");
    Map<String,String Function(String)> validators = {
      "Email":(value){
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
      "Password": (value){
             if(value.isEmpty && !this.errors.contains(kPassNullError)){
               setState(() {
               errors.add(kPassNullError);
              });
               }else if(value.length<4&& !this.errors.contains(kShortPassError)){
               setState(() {
                 this.errors.add(kShortPassError);
               });
              }
               return null;
      },
      "Confirm Password": (value){
        if(value.isEmpty&&!this.errors.contains(kPassNullError)){
          setState((){
            errors.add(kPassNullError);
          });
        }else if(value!=password){
          setState((){
            errors.add(kMatchPassError);
          });
        }
        return null;
      }
    };
    
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
             this.header_value = value;
             return null;
           },
           validator: validators[header],
           decoration: InputDecoration(
             labelText: this.header,
             hintText: hint_text??"Enter your ${this.header}",
             suffixIcon: CustomSuffixIcon(svgIcon: this.trailing_Svgicon,)
           )
         );
   }
}
