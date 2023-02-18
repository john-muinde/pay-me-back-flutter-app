import 'package:flutter/material.dart';
import 'package:okay/views/screens/on_launch/detailsPhoneNumber.dart';
import 'package:okay/views/screens/on_launch/details_name.dart';

import 'views/screens/home/home.dart';
import 'views/screens/on_launch/details_otp.dart';

//Routes Names
const String detailsName = 'details_name';
const String detailsPhone = 'details_phone';
const String detailsOtp = 'details_otp';
const String home = 'home';

//control pur page route flow

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case detailsPhone:
      return MaterialPageRoute(builder: (context) => const DetailsPhone());
    case detailsName:
      return MaterialPageRoute(builder: (context) => DetailsNameScreen());
    case detailsOtp:
      return MaterialPageRoute(builder: (context) => const OTPScreen());
    case home:
      return MaterialPageRoute(builder: (context) => const Home());
    default:
      throw ('This rout name does not exist');
  }
}
