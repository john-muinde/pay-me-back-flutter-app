import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AllCountriesTextField extends StatelessWidget {
  final Function phoneFunction;
  const AllCountriesTextField({super.key, required this.phoneFunction});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        fillColor: Color(0XFFF2F2F2),
        filled: true,
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10),
          
        ),
      ),
      initialCountryCode: 'KE',
      onChanged: (phone) {
        phoneFunction(phone);
      },
    );
  }
}
