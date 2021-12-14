import '../../screens.dart';

class CheckOut extends StatefulWidget {
  static const String routeName = 'checkout screen';

  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  Widget items() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          height: 3,
        ),
        Text('Red Dress'),
        Text(
          '\$15',
          style: TextStyle(color: Colors.pink),
        )
      ],
    );
  }

  Widget circleIcon() {
    return Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.circle,
          color: Colors.pink,
        ));
  }

  Widget dashedLine() {
    return Expanded(
      child: Container(
        height: 1,
        color: Colors.pink,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      circleIcon(),
                      dashedLine(),
                      circleIcon(),
                      dashedLine(),
                      circleIcon(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Summary',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                items(),
                const SizedBox(
                  width: 20,
                ),
                items(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Shipping Address'),
                      Icon(
                        Icons.check_circle,
                        color: Colors.pink,
                        size: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      '12, Bay brook, Sharps Rd, Keilor East, Melbourne, Australia'),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Change',
                        style: TextStyle(color: Colors.pink),
                      ))
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Payment'),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 30,
                    ),
                    trailing: const Icon(
                      Icons.check_circle,
                      color: Colors.pink,
                      size: 30,
                    ),
                    title: const Text('Master Card'),
                    subtitle: RichText(
                      text: TextSpan(
                          text: '**** **** **** ',
                          style: TextStyle(color: blackColor),
                          children: [
                            TextSpan(
                                text: '4543',
                                style:
                                    TextStyle(fontSize: 16, color: blackColor)),
                          ]),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Change',
                        style: TextStyle(color: Colors.pink),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      primary: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.pink),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'PAY',
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
            ),
          ],
        ),
      ),
    );
  }
}
