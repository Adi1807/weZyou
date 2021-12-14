import 'package:flutter/material.dart';
import 'package:we_z_you/constants/colors.dart';

class NotificationScreen extends StatelessWidget {
  static const String routeName = 'Notification Screen';

  const NotificationScreen({Key? key}) : super(key: key);

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
          'Notification',
          style: TextStyle(color: blackColor),
        ),
      ),
      body: bodyWidget(),
    );
  }

  Widget bodyWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1,
        child: ListTile(
          leading: Icon(
            Icons.circle,
            color: Colors.pink,
            size: 14,
          ),
          minLeadingWidth: 10,
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text('Your order has been picked up'),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              'Now',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
