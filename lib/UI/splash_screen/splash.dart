import '../../screens.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

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
