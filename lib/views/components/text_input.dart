import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const CustomTextInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  bool _hasFocus = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _hasFocus = hasFocus;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: _hasFocus
                ? const Color.fromARGB(255, 218, 135, 27)
                : const Color(0XFF434040),
            width: _hasFocus ? 2 : 1,
          ),
        ),
        child: TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            icon: Icon(
              widget.icon,
              color: Colors.grey,
            ),
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
