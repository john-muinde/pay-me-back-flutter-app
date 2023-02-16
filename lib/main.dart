import 'package:flutter/material.dart';

import 'views/screens/details_name.dart';
// import 'package:okay/views/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DetailsNameScreen(),
      )
      //  ChatCarbat()
      ,
    );
  }
}
