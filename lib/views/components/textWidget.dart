import 'package:flutter/material.dart';

Widget myTextWidget(
    {label, size = 46.0, MyColor = Colors.white, Weight = FontWeight.bold}) {
  return Text(
    label,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: size,
      color: MyColor,
      fontWeight: Weight,
    ),
  );
}
