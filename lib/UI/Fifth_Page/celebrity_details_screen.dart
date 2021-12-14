import '../../screens.dart';

class CelebrityDetailsScreen extends StatefulWidget {
  static const String routeName = '/CelebrityDetailsScreen';

  const CelebrityDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CelebrityDetailsScreen> createState() => _CelebrityDetailsScreenState();
}

class _CelebrityDetailsScreenState extends State<CelebrityDetailsScreen> {
  bool onTap = false;

  void onTapButton() {
    setState(() {
      onTap = !onTap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text('Celebrity Details'),
        actions: [
          IconButton(
            onPressed: () {
              onTapButton();
            },
            icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Container(
                  color: Colors.grey[700],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        onTapButton();
                      },
                      child: Text(
                        'Reviews',
                        style:
                            TextStyle(color: onTap ? greyColor : Colors.pink),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        shape: !onTap
                            ? RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.grey,
                                ),
                              )
                            : null,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        onTapButton();
                      },
                      child: Text(
                        'Reviews',
                        style:
                            TextStyle(color: !onTap ? greyColor : Colors.pink),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        shape: onTap
                            ? RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.grey,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Text(
                  'If you\'re offered a seat on a rocket ship, don\'t ask what seat! Just get on board and move the seil towards the destination.\nIf you\'re offered a seat on a rocket ship, don\'t ask what seat! Just get on board and move the seil towards the destination.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Pay Now',
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
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Get the latest stories? ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                    TextSpan(
                        text: 'Subscribe', style: TextStyle(color: Colors.pink))
                  ])),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3.3,
            right: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.video_call,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
