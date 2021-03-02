import 'package:flutter/material.dart';
import 'package:test_app/routs.dart';
import 'package:test_app/start/start_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TEST APP',
      theme: ThemeData(
        backgroundColor: Colors.black
      ),
      initialRoute: StartScreen.routeName,
      routes: routes,
    );
  }
}