import 'package:flutter/material.dart';
import 'package:mausam/Acitivity/home.dart';
import 'package:mausam/Acitivity/loading.dart';


void main() {
  runApp(MaterialApp(
    routes: {
      "/" : (context) => Loading(),
      "/home" : (context) => Home(),
      "/loading" : (context) => Loading(),
    },
  ));
}

