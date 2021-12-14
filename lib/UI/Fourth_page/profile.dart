import '../../screens.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = 'Profile page';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Profile',
          style: TextStyle(color: blackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  // mainAxisSize: MainAxisSize.min,

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: greyColor,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Name'),
                        Text('Email'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            listTileWidget('Edit Profile', Icons.edit, () {}),
            listTileWidget('Shopping Address', Icons.location_on, () {}),
            listTileWidget('Wishlist', Icons.favorite_outline, () {}),
            listTileWidget('Order History', Icons.timelapse, () {}),
            listTileWidget('Your Celebrity Videos', Icons.edit, () {}),
            listTileWidget('Cards', Icons.edit, () {}),
            listTileWidget(
                'Notifications', Icons.notifications_outlined, () {}),
            listTileWidget('Log Out', Icons.logout, () {}),
          ],
        ),
      ),
    );
  }

  Widget listTileWidget(String title, IconData icon, Function onListTileTap) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        onTap: () => onListTileTap(),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.pink[100],
          ),
          child: Icon(
            icon,
            color: Colors.pink[300],
          ),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: blackColor,
        ),
      ),
    );
  }
}
