import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final Widget child;

  const SquareTile({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      margin: const EdgeInsets.only(left: 9),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0XFF02034A).withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        highlightColor: Colors.purple,
        onTap: () {},
        child: child,
      ),
    );
  }
}
