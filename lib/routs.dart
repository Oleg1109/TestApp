import 'package:flutter/widgets.dart';
import 'package:test_app/color/color_screen.dart';
import 'package:test_app/start/start_screen.dart';




final Map<String, WidgetBuilder> routes = {
  StartScreen.routeName: (context) => StartScreen(),
  ColorScreen.routeName: (context) => ColorScreen(),
};