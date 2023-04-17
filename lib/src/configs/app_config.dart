import 'package:flutter/material.dart';

enum Environment { dev, prod } 

class AppConfig extends InheritedWidget {
  const AppConfig({ 
    super.key, 
    required super.child, 
    required this.environment, 
    required this.appTitle,
  });
  final Environment environment;
  final String appTitle;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false; 
}
