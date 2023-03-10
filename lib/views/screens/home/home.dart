import 'package:flutter/material.dart';
import 'package:okay/views/components/top_bottom_bar.dart';
import 'package:okay/views/components/home_text_button.dart';
import '../../../routes.dart' as route;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdvancedAppBar(),
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
          MyTextButton(
            context: context,
            text: 'Add New Customer',
            handlerFunction: () {
              Navigator.pushNamed(context, route.addNewCustomer);
            },
            icon: true,
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
