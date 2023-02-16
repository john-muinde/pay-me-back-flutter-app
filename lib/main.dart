import 'package:flutter/material.dart';

import '../../../routes.dart' as route;

import 'views/screens/on_launch/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      )
      //  ChatCarbat()
      ,
      onGenerateRoute: route.controller,
      // initialRoute: route.detailsName
    );
  }
}
