import 'package:flutter/material.dart';
import 'package:okay/views/screens/home/home.dart';

import '../../../routes.dart' as route;

import 'views/screens/on_launch/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Color(0xffF8F1F1),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      )
      //  ChatCarbat()
      ,
      onGenerateRoute: route.controller,
      // initialRoute: route.detailsName
    );
  }
}
