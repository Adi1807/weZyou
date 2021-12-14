library numeric_keyboard;

import '../../screens.dart';

typedef KeyboardTapCallback = void Function(String text);

class NumericKeyboard extends StatefulWidget {
  /// Color of the text [default = Colors.black]
  final Color textColor;

  /// Display a custom right icon
  final Icon? rightIcon;

  /// Action to trigger when right button is pressed
  final Function()? rightButtonFn;

  /// Display a custom left icon
  final Icon? leftIcon;

  /// Action to trigger when left button is pressed
  final Function()? leftButtonFn;

  /// Callback when an item is pressed
  final KeyboardTapCallback onKeyboardTap;

  /// Main axis alignment [default = MainAxisAlignment.spaceEvenly]
  final MainAxisAlignment mainAxisAlignment;

  NumericKeyboard(
      {Key? key,
      required this.onKeyboardTap,
      this.textColor = Colors.black,
      this.rightButtonFn,
      this.rightIcon,
      this.leftButtonFn,
      this.leftIcon,
      this.mainAxisAlignment = MainAxisAlignment.spaceEvenly})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NumericKeyboardState();
  }
}

class _NumericKeyboardState extends State<NumericKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Enter Amount'),
        RichText(
            text: TextSpan(
                text: '\u{20b9} ',
                style: TextStyle(color: blackColor, fontSize: 20),
                children: [
              TextSpan(
                  text: amount,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: blackColor)),
            ])),
        Padding(
          padding: EdgeInsets.only(top: 2, bottom: 2),
          child: Divider(
            thickness: 1,
            indent: 50,
            endIndent: 50,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 0),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              ButtonBar(
                alignment: widget.mainAxisAlignment,
                children: <Widget>[
                  _calcButton('1'),
                  _calcButton('2'),
                  _calcButton('3'),
                ],
              ),
              ButtonBar(
                alignment: widget.mainAxisAlignment,
                children: <Widget>[
                  _calcButton('4'),
                  _calcButton('5'),
                  _calcButton('6'),
                ],
              ),
              ButtonBar(
                alignment: widget.mainAxisAlignment,
                children: <Widget>[
                  _calcButton('7'),
                  _calcButton('8'),
                  _calcButton('9'),
                ],
              ),
              ButtonBar(
                alignment: widget.mainAxisAlignment,
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
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
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
        Padding(
          padding: EdgeInsets.all(8),
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Pay',
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  elevation: 0,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 105, vertical: 20),
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.pink),
                      borderRadius: BorderRadius.all(Radius.circular(30))))),
        )
      ],
    );
  }

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
                color: widget.textColor),
          ),
        ));
  }
}
