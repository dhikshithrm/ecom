

import 'package:ecom/constants.dart';
import 'package:ecom/models/chat.dart';
import 'package:ecom/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chat_screen.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Widget> chats;
List<Widget> getchats (
  int i,BuildContext context
){
   chats= [

                       

                        Padding(
padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          child: FlatButton(
                            
                            onPressed:(){},
                             padding: EdgeInsets.all(13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color(0xFFF5F6F9),
                              child: ListTile(
                                leading: CircleAvatar(
                                  maxRadius: 25,
                                  backgroundImage:NetworkImage(messageData[i].imageurl),
                                  
                                ),
                                
                      horizontalTitleGap: 3,
                                title: Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:<Widget> 
                                  [
                                    Padding(
                                      padding:  EdgeInsets.only(left: getProportionateScreenWidth(10)),
                                      child: Text(messageData[i].name,
                                      
                                      maxLines: 2,
                                      style:TextStyle(

                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      )),
                                    ),
                                   /* Text(
                                      messageData[i].time,
                                      style:TextStyle(
                                      color:Colors.grey,
                                      fontSize: 16.0)
                                    ),*/
                                  IconButton(icon: Icon(Icons.call,color: Colors.green[500],), onPressed:(){}),
                                  ],
                                  ),
                                 
                                  /*subtitle: Container(
                                    padding:EdgeInsets.only(top:5.0),
                                    child:Text(
                                      messageData[i].message,
                                      style: TextStyle(
                                        color:Colors.grey,
                                        fontSize:15.0
                                      ),
                                    )
                                  ),*/
                                  onTap: (){
                                     Navigator.of(context).push(CupertinoPageRoute(builder: (_)=> ChatScreen(
                                      name:messageData[i].name,
                                      imageurl: messageData[i].imageurl,
                                                     )));
                                                     
                                  },
                              ),
                            ),
                        ),
                        
                      ];
                      return chats;
                      }
                      
   @override
   Widget build(BuildContext context){
    return Scaffold(
     

 body:   ListView.builder(
        itemCount:messageData.length,
        itemBuilder: (context,i)=>
        Column(
                      children:getchats(i,context),
        )
        ,
        ),
          
                  
               
          
    );
  }
}
