import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'dart:math' as math;

class ColorChande extends StatefulWidget {
  @override
  _ColorChandeState createState() => _ColorChandeState();
}

class _ColorChandeState extends State<ColorChande> {
  final rnd = math.Random();
  Color getRandomColor() => Color(rnd.nextInt(0xffffffff));
  @override
  Widget build(BuildContext context) {
    return Container(
      color: getRandomColor(),
      child: Center(
        child: Text('Hey there',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30)
          ),),
      ),
    );
  }
}
