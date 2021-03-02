import 'package:flutter/material.dart';
import '../size_config.dart';
import 'components/body.dart';


class ColorScreen extends StatelessWidget{
  static String routeName = "/colorscr";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}