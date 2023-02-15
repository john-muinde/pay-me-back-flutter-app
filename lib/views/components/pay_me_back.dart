import 'package:flutter/material.dart';

import 'textWidget.dart';

class MainTextWidget extends StatelessWidget {
  const MainTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
