import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:okay/views/components/myTextInput.dart';
import 'package:okay/views/components/overlay_image_bg.dart';

class DetailsPhone extends StatelessWidget {
  const DetailsPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: const OverLayBg(opacity: 0.8),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Please, Enter your Phone Number',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const AllCountriesTextField(phoneFunction: print),
                  Container(
                    child: const Text(
                      'Or Continue with your social account',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icons.person, Icons.facebook_outlined, Icons.apple]
                          .map((e) => Icon(e,size: 45,))
                          .toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
