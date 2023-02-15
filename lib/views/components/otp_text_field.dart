import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPTextfield extends StatelessWidget {
  const OTPTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: PinCodeTextField(
        appContext: context,
        length: 4, // the length of the OTP
        onChanged: (value) {
          // handle OTP input
        },

        showCursor: true,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 59,
          inactiveColor: const Color(0XFF02034A).withOpacity(0.2),
          activeFillColor: Colors.white,
        ),
      ),
    );
  }
}
