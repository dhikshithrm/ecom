import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("Rehman FirstApp"),),
        body: Center(
          child: Text("$counter"),
        ),
        floatingActionButton: IconButton(
          icon: Icon(Icons.add),
          onPressed: (){
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }
}