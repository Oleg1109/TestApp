import 'package:flutter/material.dart';
import 'package:test_app/start/components/body.dart';
import '../size_config.dart';

class StartScreen extends StatelessWidget{
  static String routeName = "/startscr";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //backgroundColor: ,
      body: Body(),
    );
  }
}