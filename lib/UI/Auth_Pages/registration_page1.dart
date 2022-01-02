/// This is file of [user info].

import 'package:we_z_you/UI/Auth_Pages/screen_args.dart';
import 'package:we_z_you/extras/fluttertoast.dart';

import '../../screens.dart';

class RegistrationPage1 extends StatefulWidget {
  static const String routeName = '/Registration Page1';

  const RegistrationPage1({Key? key}) : super(key: key);

  @override
  _RegistrationPage1State createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  String? name, email, password, country;
  bool? passwordVisible;
  TextEditingController? _nameController;
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  TextEditingController? _countryController;
  String? errormsg;
  bool? check;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    passwordVisible = false;
    check = false;
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _countryController = TextEditingController();
    super.initState();
  }

  Widget textFieldMethod(String hintName, IconData icon,
      TextEditingController? textEditingController,
      {bool isSuffix = false, bool isMultiline = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        maxLines: isMultiline ? 5 : 1,
        controller: textEditingController,
        validator: (val) {
          if (val == null || val.isEmpty) {
            setState(() {
              errormsg = 'Please enter $hintName';
            });
          } else {
            setState(() {
              errormsg = null;
            });
          }
        },
        obscureText: hintName == 'Password' && !passwordVisible!,
        decoration: InputDecoration(
          errorText: errormsg,
          suffixIcon: hintName == 'Password'
              ? passwordVisible!
                  ? IconButton(
                      icon: Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible!;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible!;
                        });
                      },
                    )
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
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
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
                      textFieldMethod(
                          'Name', Icons.person_outline, _nameController),
                      const SizedBox(
                        height: 20,
                      ),
                      textFieldMethod(
                        'Email',
                        Icons.email,
                        _emailController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      textFieldMethod(
                          'Password', Icons.lock, _passwordController),
                      const SizedBox(
                        height: 20,
                      ),
                      textFieldMethod(
                          'Enter your country', Icons.flag, _countryController),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: check,
                            onChanged: (val) {
                              setState(() {
                                check = val;
                              });
                            },
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AbsorbPointer(
                          absorbing: !check!,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_nameController?.text == null ||
                                    _nameController!.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Please enter name"),
                                  ));
                                } else if (_emailController?.text == null ||
                                    _emailController!.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Please enter email"),
                                  ));
                                } else if (_passwordController?.text == null ||
                                    _passwordController!.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Please enter password"),
                                  ));
                                } else if (_countryController?.text == null ||
                                    _countryController!.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Please enter country"),
                                  ));
                                } else {
                                  Navigator.of(context)
                                      .pushNamed(RegistrationPage.routeName,
                                          arguments: ScreenArguments(
                                            _nameController!.text,
                                            _emailController!.text,
                                            _passwordController!.text,
                                            _countryController!.text,
                                          ));
                                }
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
