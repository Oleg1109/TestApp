import 'package:flutter/material.dart';
import 'dart:async';
import 'package:test_app/color/color_screen.dart';
import 'package:test_app/size_config.dart';


class Body extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<Body> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => ColorScreen()//SignInScreen()

            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // use your preferred colors
              Colors.red[900],
              Colors.blue[900],
            ],
            // start at the top
            begin: Alignment.topCenter,
            // end at the bottom
            end: Alignment.bottomCenter,
          ),
        ),
      child: Center(
        child: Text('TEST APP',
        style: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(50)
        ),),
      )
    );
  }
}
