import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
String username;

//Async - Functions Start But Return some delayed
  //Future.delayed - Function start after some delayed

 void getData() async
 {
   //process
  await Future.delayed(Duration(seconds:2 ), () {
     username = "Dhruv";
   });

 }

 void showData() async
 {
   await getData();
   print("$username");
 }


  int counter = 1;
  @override
  void initState() {
    super.initState();

    showData();
    print("This is a init state");
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget Destroyed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body:
          Column(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () => setState(() {
                  counter += 1;
                }),
              ),
              Text("$counter")
            ],
          )



    );
  }
}

