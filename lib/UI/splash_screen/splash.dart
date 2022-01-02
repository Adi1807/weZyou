import 'package:we_z_you/Authentication/auth.dart';

import '../../screens.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    firebaseUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Material(
      color: Color(0xffe9466d),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset('assets/logo/splash2.jpg'),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () async {
                  if (getFirebaseAuth.currentUser == null) {
                    Navigator.of(context)
                        .pushReplacementNamed(RegistrationPage1.routeName);
                  } else {
                    Navigator.of(context).pushNamed(Homepage.routeName);
                  }
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
