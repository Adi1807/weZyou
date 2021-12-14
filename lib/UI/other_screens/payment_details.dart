import 'package:flutter/material.dart';
import 'package:we_z_you/constants/colors.dart';

class PaymentDetails extends StatelessWidget {
  static const String routeName = 'Payment Screen';

  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: blackColor,
            )),
        title: Text(
          'Payment Details',
          style: TextStyle(color: blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'You have ',
                style: TextStyle(color: greyColor),
                children: [
                  TextSpan(
                    text: '\u{20B9}5627',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      style: TextStyle(color: greyColor),
                      text:
                          ' Un secured funds. you can change your fund to some other'),
                ],
              ),
            ),
            listTileWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Send Remainder',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.pink),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listTileWidget() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              'You have',
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              'Your account is pending.',
              style: TextStyle(
                color: greyColor,
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              'Sep 25,2017',
              style: TextStyle(
                color: greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.circle,
                  size: 14,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 2,
                ),
                Text('\$1344')
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(2)),
          Padding(
              padding: EdgeInsets.all(2),
              child: RichText(
                text: TextSpan(
                    text: 'User ID  ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: blackColor),
                    children: [
                      TextSpan(
                          text: '0.00034BTC',
                          style: TextStyle(color: Colors.pink, fontSize: 15)),
                    ]),
              )),
        ],
      ),
    );
  }
}
