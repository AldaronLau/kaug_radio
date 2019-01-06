import 'package:flutter/material.dart';
import 'package:kaug_augsburg_radio/Home.dart';
import 'package:kaug_augsburg_radio/Constants.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      "/": Home.home,
    };

    return new MaterialApp(
      title: Constants.appTitle,
      theme: new ThemeData(primarySwatch: Constants.appColor),
      routes: routes,
    );
  }
}
