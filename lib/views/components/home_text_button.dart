import 'package:flutter/material.dart';

Widget MyTextButton({
  context,
  icon = false,
  text,
  handlerFunction,
  backgroundColor,
  foreGroundColor,
}) {
  ButtonStyle style = ButtonStyle(
    fixedSize: MaterialStateProperty.all(
        Size(MediaQuery.of(context).size.width * 0.88, 55.0)),
    foregroundColor: MaterialStateProperty.all(
      foreGroundColor ?? Color(0xffFFFFFF),
    ),
    backgroundColor: MaterialStateProperty.all(
      backgroundColor ?? const Color(0xff343A91),
    ),
  );
  return icon
      ? TextButton.icon(
          style: style,
          onPressed: handlerFunction,
          icon: const Icon(Icons.playlist_add),
          label: Text(text),
        )
      : TextButton(
          style: style,
          onPressed: handlerFunction,
          child: Text(text),
        );
}
