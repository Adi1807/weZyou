/// This is file of [user info].

import '../../screens.dart';

class RegistrationPage1 extends StatefulWidget {
  static const String routeName = '/Registration Page1';

  const RegistrationPage1({Key? key}) : super(key: key);

  @override
  _RegistrationPage1State createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  Widget textFieldMethod(String hintName, IconData icon,
      {bool isSuffix = false, bool isMultiline = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        maxLines: isMultiline ? 5 : 1,
        decoration: InputDecoration(
          suffixIcon: hintName == 'Password'
              ? Icon(Icons.visibility_off)
              : isSuffix
                  ? Icon(icon)
                  : null,
          prefixIcon: isSuffix
              ? null
              : Padding(
                  padding: isMultiline
                      ? const EdgeInsets.only(bottom: 80)
                      : EdgeInsets.zero,
                  child: Icon(icon),
                ),
          hintText: hintName,
          hintStyle: TextStyle(color: Colors.grey[600]),
          fillColor: lightGreyColor,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Column(
            children: [
              Spacer(),
              Text(
                'Hey there,',
                style: theme.subtitle1,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Create an Account',
                style: theme.headline5,
              ),
              const SizedBox(
                height: 20,
              ),
              textFieldMethod('Name', Icons.person_outline),
              const SizedBox(
                height: 20,
              ),
              textFieldMethod('Email', Icons.email),
              const SizedBox(
                height: 20,
              ),
              textFieldMethod('Password', Icons.lock),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (val) {},
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'By continuing you accept our ',
                      style: TextStyle(color: Colors.grey[600]),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey[600]),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Homepage.routeName);
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: lightpinkColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
