/// This is file of [your wallet].

import 'package:flutter/material.dart';
import 'package:we_z_you/constants/colors.dart';

class WalletScreen extends StatelessWidget {
  static const String routeName = 'wallet screen';

  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 8,
            ),
            child: Text(
              '\$3456',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: Text(
              'Here is your wezyou Balance',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Add Balance',
              style: TextStyle(
                  color: whiteColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.pink),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Your Username : hsufu67',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              child: Container(
                alignment: Alignment.center,
                height: 100,
                child: ListTile(
                  title: Text(
                    'Sophia Jhonas',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 12,
                    ),
                  ),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'Kelio Store',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Text(
                        'Melbourne, AU',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pink,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.my_location_sharp,
                      color: Colors.pink,
                    ),
                  ),
                  trailing: Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
