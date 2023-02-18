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

PreferredSizeWidget myAppBar({title, action}) {
  return AppBar(
    title: title.runtimeType == ''.runtimeType
        ? Text(
            title,
            style: const TextStyle(fontSize: 25),
          )
        : title,
    actions: action,
    elevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
  );
}
