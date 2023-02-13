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
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        screen1 = false;
      });
    }).then(
      (_) => Future.delayed(
        const Duration(milliseconds: 3000),
        () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatCarbat(),
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
            color: const Color.fromARGB(255, 240, 240, 240),
            child: const Center(
              child: mainTextWidget(),
            ),
          )
        : const Center(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          myTextWidget(
              label: "Pay", MyColor: const Color.fromARGB(255, 23, 67, 187)),
          myTextWidget(
              label: "Me", MyColor: const Color.fromARGB(255, 218, 135, 27)),
          myTextWidget(
              label: "Back", MyColor: const Color.fromARGB(255, 23, 67, 187))
        ],
      ),
    );
  }
}
