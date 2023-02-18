import 'package:flutter/material.dart';

import 'package:okay/views/components/overlay_image_bg.dart';
import '../../../routes.dart' as route;

import '../../components/otp_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: mediaQuery.height,
        child: Stack(
          fit: StackFit.loose,
          children: [
            SizedBox(
              height: mediaQuery.height * 0.70,
              child: const OverLayBg(
                opacity: 0.3,
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: mediaQuery.height * 0.35,
                width: mediaQuery.width,
                decoration: const BoxDecoration(
                  color: Color(0XFF263BBA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      Text(
                        'PASTE FROM SMS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '0349',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: mediaQuery.height * 0.25,
                width: mediaQuery.width,
                decoration: const BoxDecoration(
                  color: Color(0XFFF8F1F1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OTPTextfield(
                      handlerFunction: (value) =>
                          Navigator.pushReplacementNamed(
                              context, route.detailsName),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Please, enter 4-digit code we sent to your mobile number',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0XFF02034A).withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
