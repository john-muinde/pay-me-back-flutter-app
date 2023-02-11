import 'package:flutter/material.dart';
import 'package:okay/views/chatcarbat.dart';
import 'package:okay/views/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      )
      //  ChatCarbat()

      ,
    );
  }
}
