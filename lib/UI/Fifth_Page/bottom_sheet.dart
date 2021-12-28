/// This is file of [celebrity pay].

import '../../screens.dart';

void bottomModelSheet1(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                minLeadingWidth: 0,
                title: Text('You are Paying Celebrity for'),
                subtitle: Text(
                  '\u{20B9} 4000',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Balance',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '0.011',
                      style: TextStyle(color: Colors.pink, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Text('Select Payment Method'),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith((v) {
                      Colors.pink;
                    }),
                    activeColor: Colors.pink,
                    value: true,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      // setState(() {
                      //   isChecked = value!;
                      // });
                    },
                  ),
                ),
                title: Text(
                  'Wallet',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                leading: Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    activeColor: Colors.pink,
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith((v) {
                      Colors.pink;
                    }),
                    value: false,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      // setState(() {
                      //   isChecked = value!;
                      // });
                    },
                  ),
                ),
                title: Text(
                  'Wallet',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                leading: Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith((v) {
                      Colors.pink;
                    }),
                    activeColor: Colors.pink,
                    value: false,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      // setState(() {
                      //   isChecked = value!;
                      // });
                    },
                  ),
                ),
                title: Text(
                  'Credit Card',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text('2% Service charge Applicable',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Proceed To Pay',
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
              ),
            ],
          ),
        );
      });
}

void modelSheet2(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: NumericKeyboard(
            onKeyboardTap: (val) {},
          ),
        );
      });
}
