import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Explore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  SplashScreen(
            seconds: 3,
            navigateAfterSeconds: new Explore(),
            imageBackground: AssetImage("images/Halloween.jpg"),
            loadingText:new Text('Happy Halloween',style: TextStyle(color: Color(0xfff7ef42),fontSize: 40,fontWeight: FontWeight.bold,fontFamily: "SyneMono"),),
            photoSize: 100.0,
            loaderColor: Colors.white
        )
      )
    );
  }
}
