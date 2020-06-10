import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/Home/Home_View.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.pinkAccent,
      fontFamily: 'Quicksand',
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.w700
          ) 
        ),
      ),
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

