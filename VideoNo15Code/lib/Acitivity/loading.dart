import 'package:flutter/material.dart';
import 'package:mausam/Worker/worker.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
String Temperature = "Loading";


  void startApp() async
  {
    worker instance  = worker(location: "Dhsfjoajsf");
    await instance.getData();
    setState(() {
      Temperature = instance.temp;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

startApp();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, "/home");
          }, icon: Icon(Icons.add_to_home_screen), label: Text(Temperature))
        ],),
      ),
      
    );
  }
}
