import 'package:flutter/material.dart';
import 'package:okay/views/components/pay_me_back.dart';

class OverlayBg extends StatelessWidget {
  final List props;
  const OverlayBg({super.key, this.props = const []});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(1, 0, 0, 0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('./assets/images/bg-image.jpg'),
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MainTextWidget(),
            if (props.isNotEmpty) ...props,
          ],
        )
      ],
    );
  }
}
