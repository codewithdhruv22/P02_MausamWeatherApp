import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
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
    Map info = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(info["loc_value"]),
            Row(
              children: <Widget>[
                Text(info["temp_value"]),Text("C")
              ],
            ),
            Text("Description"),
            Row(
              children: <Widget>[
                Text("Humidity"),
                Text("Air Speed")
              ],
            )

          ],
        ),
      ),
    );
  }
}

