import 'package:flutter/material.dart';
import 'package:okay/views/components/home_text_button.dart';
import 'package:okay/views/components/top_bottom_bar.dart';

class AddNewCustomer extends StatelessWidget {
  const AddNewCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdvancedAppBar(text: "Add Customer",mySize: 0.0),
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
            handlerFunction: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextButton(
            context: context,
            text: 'Add Manually',
            handlerFunction: () {},
            foreGroundColor: const Color(0xff333CC1),
            backgroundColor: const Color(0xff333CC1).withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
