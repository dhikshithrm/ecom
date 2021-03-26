import 'package:flutter/widgets.dart';
import 'package:flutter/src/services/asset_bundle.dart';
import 'package:flutter/src/painting/image_provider.dart';

class chat {
  final String name;
  String message;
  final String time;
  final String imageurl;

  chat({this.name, this.message, this.time, this.imageurl});
}

List<chat> messageData = [
  new chat(
      name: "We Care Online Store ",
      message: "Learn Code Online",
      time: "10:12",
      imageurl:("https://images.pexels.com/photos/2216607/pexels-photo-2216607.jpeg?auto=compress")),
  
  new chat(
      name: "Archie’s Food Basket",
      message: "welcome to flutter course",
      time: "02:16",
      imageurl:
          "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new chat(
      name: "Better Land Grocery",
      message:
          "I gave you the chance of aiding me willingly, but you have elected the way of pain.",
      time: "11:11",
      imageurl:
          "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new chat(
      name: "Dollar General",
      message: "Python ",
      time: "20:21",
      imageurl:
          "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new chat(
      name: "E-Z Go Conner Store",
      message: "The dark fire will not avail you! Flame of Udûn!",
      time: "1:12",
      imageurl:
          "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  
];
