import 'package:flutter/material.dart';
/// This code defines an abstract class named AppTheme that provides a static method 'light'
///  that returns a specific ThemeData that represents a light theme for a Flutter app.
/// The ThemeData returned by the 'light' method sets the following properties:
/// appBarTheme: Sets the AppBarTheme with zero elevation and white background.
/// scaffoldBackgroundColor: Sets the background color of the Scaffold widget to white.
/// primaryColor: Sets the primary color of the app to black.
/// splashColor: Sets the splash effect color to transparent.
/// fontFamily: Sets the default font family to 'Poppins'.
/// colorScheme: Sets the primary and secondary color to swatch and black respectively.
/// This code is useful for creating a consistent and aesthetically pleasing look and feel for an app with a light theme.
abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
      fontFamily: 'Poppins',
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }
}
