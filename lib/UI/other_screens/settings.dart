import 'package:flutter/material.dart';
import 'package:we_z_you/constants/colors.dart';

class Settings extends StatelessWidget {
  static const String routeName = 'setting screen';

  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10),
          child: Text(
            'Your App Settings',
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        listTileSwitchWidget('Notifications',
            'Receive notifications on latest offers and store updates'),
        listTileSwitchWidget('Popups',
            'Disable all popups and adverts from third party vendors'),
        listTileSwitchWidget('Order History',
            'Keep your order history on the app unless manually removed'),
        listTileSwitchWidget('Celebrity Video Save',
            'Automatically save videos from celebrity in your gallery'),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Update settings',
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
                        borderRadius: BorderRadius.all(Radius.circular(30))))),
          ),
        ),
      ],
    );
  }

  Widget listTileSwitchWidget(String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      child: ListTile(
        minLeadingWidth: 0,
        trailing: Switch(
          value: true,
          onChanged: (val) {},
          activeTrackColor: Colors.grey,
          activeColor: Colors.pink,
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            subTitle,
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
