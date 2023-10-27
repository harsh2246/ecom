import 'package:ecom/pages/ItemPage.dart';
import 'package:flutter/material.dart';
import 'package:ecom/pages/LoginPage.dart';
import 'package:ecom/pages/HomePage.dart';
//Normal constructor bhi bana ke chala sakte hai
//do not make constructor
//material app use hota hai root widget ke liye or scaffold use hota hai
//har screen ke main widget ke liye
void main() => runApp(MyApp()); //arrow function

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(
              0xFFCEDDEE) //yeh backvground color dega scaffold yani pure app ki main screen ko
          ),
      routes: {
        "/": (context) =>const LoginPage(), 
         "homepage": (context) =>const HomePage(), // The context parameter is used to build the LoginPage widget when the root route is accessed.
        "itempage": (context) =>const ItemPage(),
      
      },
    );
  }
}
//BuildContext is a fundamental concept in Flutter that represents the location of a widget within the widget tree.
//Location in the Widget Tree: BuildContext specifies where a widget is positioned within the widget tree. It's like an address that allows a widget to identify its place in the hierarchy of widgets.
