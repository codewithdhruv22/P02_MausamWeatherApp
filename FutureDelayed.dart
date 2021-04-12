import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void timer()
  {
    //process - 5 second
    Future.delayed(Duration(seconds: 9), () {
      print("ALARM IS RINGING");
    });
   print("YOU CAN DO OTHER STUFF TOO.");
  }


  int counter = 1;
  @override
  void initState() {
    super.initState();
    timer();
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

