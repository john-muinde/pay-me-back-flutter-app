import 'package:flutter/material.dart';
import 'package:okay/views/components/pay_me_back.dart';

class OverLayBg extends StatelessWidget {
  final List props;

  final double opacity;
  const OverLayBg(
      {super.key, this.props = const [MainTextWidget()], this.opacity = 0.5});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('./assets/images/bg-image.jpg'),
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(opacity),
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (props.isNotEmpty) ...props,
          ],
        )
      ],
    );
  }
}
