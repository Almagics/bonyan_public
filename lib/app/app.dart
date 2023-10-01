import 'package:flutter/material.dart';
import 'package:bonyan/persentation/resources/routes_manager.dart';
import 'package:bonyan/persentation/resources/theme_manager.dart';




class MyApp extends StatefulWidget {

int appstat = 0;
  MyApp._internal();

  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),);
  }
}


