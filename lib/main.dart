import 'package:flutter/material.dart';
import 'package:we_z_you/UI/Auth_Pages/registration_page.dart';
import 'package:we_z_you/UI/splash_screen/splash.dart';
import 'package:we_z_you/constants/colors.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 14, color: darkpinkColor),
          bodyText2: TextStyle(
            fontSize: 16,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(fontSize: 16, color: blackColor),
          headline5: TextStyle(
              fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
        ),
      ),
      home: const Splash(),
      routes: {
        RegistrationPage.routeName: (_) => const RegistrationPage(),
      },
    );
  }
}
