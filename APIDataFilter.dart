import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
String username;

//Async - Functions Start But Return some delayed
// Future.delayed - Function start after some delayed


void getData() async
{
   Response response  =await get("http://api.openweathermap.org/data/2.5/weather?q=Indore&appid=e34a5eb0b4c5ff748fdf9219a63d224e");
   Map data = jsonDecode(response.body);
   List weather_data = data['weather'];
   Map weather_main_data = weather_data[0];
   print(weather_data);
   print(weather_main_data['main']);
   // double temp = temp_data['temp'];
  // print(temp);

}


  int counter = 1;
  @override
  void initState() {
    super.initState();
    getData();
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

