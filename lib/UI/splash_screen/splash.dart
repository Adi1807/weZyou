import 'package:flutter/material.dart';
import 'package:we_z_you/UI/Auth_Pages/registration_page.dart';
import 'package:we_z_you/constants/colors.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Material(
      color: lightpinkColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text('Hello'),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RegistrationPage.routeName);
                },
                child: Text(
                  'Get Started',
                  style: theme.bodyText1,
                ),
                style: ElevatedButton.styleFrom(
                    primary: whiteColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))))),
          ),
        ],
      ),
    );
  }
}
