import 'package:flutter/material.dart';

import 'package:okay/views/components/myTextInput.dart';
import 'package:okay/views/components/overlay_image_bg.dart';
import 'package:okay/views/components/square_tile.dart';

import '../../../routes.dart' as route;

class DetailsPhone extends StatelessWidget {
  const DetailsPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              child: const OverLayBg(opacity: 0.8),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 15),
                    child: const Text(
                      'Please, Enter your Phone Number',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const AllCountriesTextField(phoneFunction: print),
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      'Or Continue with your social account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: const Color(0Xff02034A).withOpacity(0.5)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SquareTile(
                          child: Image.asset(
                            './assets/images/google.png',
                            height: 40,
                          ),
                        ),
                        const SquareTile(
                          child: Icon(
                            Icons.facebook_outlined,
                            size: 45,
                            color: Colors.blue,
                          ),
                        ),
                        const SquareTile(
                          child: Icon(
                            Icons.apple,
                            size: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, route.detailsOtp),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(240, 40, 46, 138),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
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
