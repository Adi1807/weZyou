import '../../screens.dart';

class DebitCardScreen extends StatelessWidget {
  static const String routeName = 'Debit card screen';

  const DebitCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'VISA',
                              style: TextStyle(color: whiteColor),
                            )),
                        Spacer(),
                        Text(
                          '4560    5474    3224    4543',
                          style: TextStyle(color: whiteColor),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'Card Holder',
                              style: TextStyle(color: whiteColor),
                            ),
                            Spacer(),
                            Text(
                              'Expiry',
                              style: TextStyle(color: whiteColor),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Jameson Dunn',
                              style: TextStyle(color: whiteColor),
                            ),
                            Spacer(),
                            Text(
                              '09 - 20',
                              style: TextStyle(color: whiteColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: textFormFieldWidget('Name on Card'),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: textFormFieldWidget('Name on Card'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: textFormFieldWidget('Name on Card'),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: textFormFieldWidget('Name on Card'),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    padding: const EdgeInsets.all(2),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                    )),
                horizontalTitleGap: 0,
                title: Text(
                  'Save this card details',
                  style: TextStyle(color: blackColor),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 55, vertical: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.pink),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 65, vertical: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.pink),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFormFieldWidget(String labelName) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelName,
      ),
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // I've taken approximate height of curved part of view
    // Change it if you have exact spec for it
    final roundingHeight = size.height * 3 / 5;

    // this is top part of path, rectangle without any rounding
    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    // this is rectangle that will be used to draw arc
    // arc is drawn from center of this rectangle, so it's height has to be twice roundingHeight
    // also I made it to go 5 units out of screen on left and right, so curve will have some incline there
    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);

    final path = Path();
    path.addRect(filledRectangle);

    // so as I wrote before: arc is drawn from center of roundingRectangle
    // 2nd and 3rd arguments are angles from center to arc start and end points
    // 4th argument is set to true to move path to rectangle center, so we don't have to move it manually
    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // returning fixed 'true' value here for simplicity, it's not the part of actual question, please read docs if you want to dig into it
    // basically that means that clipping will be redrawn on any changes
    return true;
  }
}
