import '../../screens.dart';

class InboxScreen extends StatelessWidget {
  static const String routeName = 'inbox screen';

  const InboxScreen({Key? key}) : super(key: key);

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
          'Inbox',
          style: TextStyle(color: blackColor),
        ),
      ),
      body: bodyWidget(),
    );
  }

  Widget bodyWidget() {
    return ListTile(
      leading: Icon(
        Icons.circle,
        color: Colors.pink,
        size: 14,
      ),
      minLeadingWidth: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text('Celebrity msg'),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipising elit, sed do eiusmod tempor',
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 16),
            child: Text(
              '6th July',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ),
          Icon(
            Icons.star_border_rounded,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
