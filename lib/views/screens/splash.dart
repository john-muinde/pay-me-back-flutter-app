import 'package:flutter/material.dart';
import 'package:okay/views/screens/languages.dart';
import '../components/overlay_image_bg.dart';

import '../components/pay_me_back.dart';

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
              builder: (context) =>const Languages(),
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
              child: MainTextWidget(),
            ),
          )
        : OverlayBg(
            props: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  'Don\'t let Your Debts get you Down',
                  'Track Your Debts',
                  'Market Your Business',
                  'Manage Your Business'
                ]
                    .map((text) => Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            text,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 3,
                                color: Colors.white),
                          ),
                        ))
                    .toList(),
              )
            ],
          );
  }
}
