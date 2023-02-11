import 'dart:io';

import 'package:flutter/material.dart';
import 'package:okay/views/chatcarbat.dart';
import 'package:okay/views/customWidgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _forwardToHome();
  }

  bool screen1 = true;

  _forwardToHome() async {
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        screen1 = false;
      });
    }).then(
      (_) => Future.delayed(
        Duration(milliseconds: 3000),
        () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ChatCarbat(),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return screen1
        ? Container(
            color: Color.fromARGB(255, 240, 240, 240),
            child: Center(
              child: mainTextWidget(),
            ),
          )
        : Center(
            child: Text('Hello there'),
          );
  }
}

class mainTextWidget extends StatelessWidget {
  const mainTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          myTextWidget(label: "Pay", MyColor: Color.fromARGB(255, 23, 67, 187)),
          myTextWidget(label: "Me", MyColor: Color.fromARGB(255, 218, 135, 27)),
          myTextWidget(label: "Back", MyColor: Color.fromARGB(255, 23, 67, 187))
        ],
      ),
    );
  }
}
