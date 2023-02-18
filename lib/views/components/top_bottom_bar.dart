import 'package:flutter/material.dart';
import 'package:okay/views/components/minor_components.dart';

PreferredSizeWidget AdvancedAppBar({text = "Wearsmute", mySize = 34.0}) {
  const color = Color(0xff333CC1);
  return myAppBar(
    title: Row(
      children: [
        Text(text),
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Icon(
            Icons.keyboard_arrow_down,
            size: mySize,
            color: color,
          ),
        )
      ],
    ),
    action: [
      const Padding(
        padding: EdgeInsets.all(15.0),
        child: Icon(Icons.more_vert),
      )
    ],
  );
}

BottomNavigationBar BottomNavBar() {
  return BottomNavigationBar(
    iconSize: 35.0,
    unselectedFontSize: 14.0,
    items: [
      ...[
        {'icon': Icons.home_filled, 'label': "Home"},
        {'icon': Icons.graphic_eq_outlined, 'label': "Marketing"},
        {'icon': Icons.person_2, 'label': "Your Company"}
      ]
          .map((e) => BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(e['icon'] as IconData),
                ),
                label: e['label'] as String,
              ))
          .toList(),
    ],
  );
}
