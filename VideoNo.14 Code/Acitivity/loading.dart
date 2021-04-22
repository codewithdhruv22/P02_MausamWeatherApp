import 'package:flutter/material.dart';
import 'package:mausam/Worker/worker.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  void startApp() async
  {
    worker instance  = worker(location: "Bhopal");
    await instance.getData();
    print(instance.air_speed);
    print(instance.description);
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
          }, icon: Icon(Icons.add_to_home_screen), label: Text("GO TO HOME"))
        ],),
      ),
      
    );
  }
}
