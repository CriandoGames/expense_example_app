import 'package:flutter/material.dart';

class ThemeMain {
  static final ThemeMain instance = ThemeMain._();

  ThemeMain._();

//Thema -> retira daqui
  ThemeData theme() {
    return ThemeData(
      accentColor: Colors.pinkAccent,
      primaryColor: Colors.pink,
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
    );
  }
}
