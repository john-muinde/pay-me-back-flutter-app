import 'package:flutter/material.dart';

import 'views/screens/on_launch/details_name.dart';

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
