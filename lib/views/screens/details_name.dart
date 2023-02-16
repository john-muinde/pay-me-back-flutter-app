import 'package:flutter/material.dart';

import 'package:okay/views/components/textWidget.dart';
import 'package:okay/views/components/text_input.dart';

import '../components/overlay_image_bg.dart';

class DetailsNameScreen extends StatelessWidget {
  DetailsNameScreen({super.key});

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: OverLayBg(
              opacity: 0.8,
              props: [
                myTextWidget(
                  label: 'We\'d like to know you',
                  MyColor: const Color.fromARGB(255, 218, 135, 27),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 15),
                  child: const Text(
                    'What\'s your name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                CustomTextInput(
                    controller: _controller,
                    hintText: 'Enter Your Name',
                    icon: Icons.person),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(0XFF000E66),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.arrow_back),
                          )),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(240, 40, 46, 138),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Finish',
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
