/// This is UI of [code.jpg]

import '../../screens.dart';

class OtpScreen extends StatefulWidget {
  static const String routeName = 'OTP screen';

  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String amount = '';
  void onKeyTap(String value) {
    setState(() {
      amount += value;
    });
  }

  Widget _calcButton(String value) {
    return InkWell(
        borderRadius: BorderRadius.circular(45),
        onTap: () {
          onKeyTap(value);
        },
        child: Container(
          alignment: Alignment.center,
          width: 80,
          height: 50,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Text(
            value,
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            const Text(
              'We have sent an OTP to your Mobile',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Please check your mobile number 071*****12 continue to verify your no',
              style: TextStyle(
                color: greyColor,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        '*',
                        style: TextStyle(fontSize: 24, color: Colors.grey[700]),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        '*',
                        style: TextStyle(fontSize: 24, color: Colors.grey[700]),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        '*',
                        style: TextStyle(fontSize: 24, color: Colors.grey[700]),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        '*',
                        style: TextStyle(fontSize: 24, color: Colors.grey[700]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 105, vertical: 20),
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.pink),
                          borderRadius:
                              BorderRadius.all(Radius.circular(30))))),
            ),
            RichText(
                text: TextSpan(
                    text: 'Didn\'t Receive? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                  TextSpan(
                      text: 'Click Here', style: TextStyle(color: Colors.pink))
                ])),
            Spacer(),
            Container(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 0),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _calcButton('1'),
                      _calcButton('2'),
                      _calcButton('3'),
                    ],
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _calcButton('4'),
                      _calcButton('5'),
                      _calcButton('6'),
                    ],
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _calcButton('7'),
                      _calcButton('8'),
                      _calcButton('9'),
                    ],
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _calcButton('.'),
                      _calcButton('0'),
                      InkWell(
                          borderRadius: BorderRadius.circular(45),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 80,
                            height: 50,
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                                color: Color(0xab000000),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
