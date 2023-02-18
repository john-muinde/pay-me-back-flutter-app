import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:okay/views/components/minor_components.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: Row(
          children: const [
            Text("Wearsmute"),
            Padding(
              padding: EdgeInsets.only(top: 3.0),
              child: Icon(
                  size: 34.0,
                  color: Color(0xff333CC1),
                  Icons.keyboard_arrow_down),
            ),
          ],
        ),
        action: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 235.0,
                ),
                Text(
                  'Trust us to help you keep track your debts and debtors',
                  style: TextStyle(
                      color: Color(0xff4F4F4F),
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Add a customer and get started',
                  style: TextStyle(
                      color: Color(0xff4F4F4F),
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 260.0,
          ),
          TextButton.icon(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width * 0.88, 55.0)),
                foregroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 253, 254, 255),
                ),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xff343A91),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.playlist_add),
              label: const Text("Add New Customer"))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
