/// This is file of [celebrity info].

import 'package:we_z_you/UI/Auth_Pages/screen_args.dart';

import '../../screens.dart';
import '../../Authentication/auth.dart';

class RegistrationPage extends StatefulWidget {
  static const String routeName = '/Registration Page';

  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String? name, category, bio;
  TextEditingController? _categoryController;
  TextEditingController? _bioController;
  TextEditingController? _nameContoller;

  @override
  void initState() {
    _categoryController = TextEditingController();
    _bioController = TextEditingController();
    _nameContoller = TextEditingController();
    super.initState();
  }

  Widget textFieldMethod(
      String hintName, IconData icon, TextEditingController _textController,
      {bool isSuffix = false, bool isMultiline = false, String? initValue}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        maxLines: isMultiline ? 5 : 1,
        controller: _textController,
        enabled: initValue == null,
        decoration: InputDecoration(
          suffixIcon: isSuffix ? Icon(icon) : null,
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
    final data = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    _nameContoller!.text = data.name!;
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                )),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
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
                  SizedBox(
                    width: 150,
                    child: Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                alignment: Alignment.topRight,
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(Icons.add))),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: greyColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  textFieldMethod('Name', Icons.person_outline, _nameContoller!,
                      initValue: data.name),
                  const SizedBox(
                    height: 20,
                  ),
                  textFieldMethod(
                      'Category', Icons.arrow_drop_down, _categoryController!,
                      isSuffix: true),
                  const SizedBox(
                    height: 20,
                  ),
                  textFieldMethod('Bio', Icons.person_outline, _bioController!,
                      isMultiline: true),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '-Connect your social media-',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                'assets/logo/facebook.png',
                                fit: BoxFit.fill,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Connect with Facebook',
                            style: theme.bodyText2,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                  'assets/logo/google.png',
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Connect with Google',
                            style: theme.bodyText2,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: InkWell(
                      onTap: () async {
                        var temp = await registerWithEmailAndPassword(
                            data.email!,
                            data.password!,
                            data.name!,
                            _categoryController!.text,
                            _bioController!.text,
                            data.country!);
                        if (temp.isLeft()) {
                          Navigator.of(context).pushReplacementNamed(
                            Homepage.routeName,
                          );
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orange,
                                  Colors.red,
                                  Colors.pink,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey.shade400)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pedal_bike),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'CONNECT ACCOUNT',
                              style: TextStyle(
                                fontSize: 16,
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(
                              RegistrationPage1.routeName);
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
        ),
      ),
    );
  }
}
