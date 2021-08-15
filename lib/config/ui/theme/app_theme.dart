import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme(
        primary: Colors.green,
        onPrimary: Colors.white,
        primaryVariant: Colors.orange,
        background: Colors.blueAccent,
        onBackground: Colors.white,
        secondary: Colors.deepPurpleAccent,
        onSecondary: Colors.white,
        secondaryVariant: Colors.deepOrange,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.light,
      ),
    );

ThemeData get darkTheme => ThemeData(
      scaffoldBackgroundColor: Colors.black,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme(
        primary: Colors.red,
        onPrimary: Colors.black,
        primaryVariant: Colors.orange,
        background: Colors.black,
        onBackground: Colors.white,
        secondary: Colors.teal,
        onSecondary: Colors.white,
        secondaryVariant: Colors.deepOrange,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.dark,
      ),
    );
