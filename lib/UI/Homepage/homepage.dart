import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:we_z_you/UI/Fourth_page/transaction_screen.dart';
import 'package:we_z_you/UI/Fourth_page/wallet_screen.dart';
import 'package:we_z_you/UI/text_field_widget.dart';

import '../../screens.dart';

class Homepage extends StatefulWidget {
  static const String routeName = '/Homepage';

  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController serviceTextEditingController = TextEditingController();
  TextEditingController priceServiceTextEditingController =
      TextEditingController();
  TextEditingController detailsTextEditingController = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  int _index = 0;

  appBarIcon(String text, IconData icon, Function onTap) {
    return InkWell(
      onTap: () {
        // bottomModelSheet1();
        // modelSheet2();
        onTap();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            icon,
            color: blackColor,
            size: 25,
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: const BoxConstraints(
                minWidth: 12,
                minHeight: 12,
              ),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            left: 0,
          )
        ],
      ),
    );
  }

  _dialog1(String title, String subTitle, String btnName, String linkText) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.all(10.0),
            content: Container(
              margin: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 13.0, right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            subTitle,
                            style: TextStyle(
                              color: greyColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 250,
                          width: 80,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RoundedLoadingButton(
                          borderRadius: 20,
                          height: 40,
                          width: 150,
                          onPressed: () async {},
                          color: Colors.pink,
                          animateOnTap: true,
                          controller: _btnController,
                          child: Text(
                            btnName,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .apply(
                                  color: Colors.white,
                                )
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            linkText,
                            style: TextStyle(
                              color: greyColor,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget textFieldMethod(String hintName, IconData icon,
      {bool isSuffix = false, bool isMultiline = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        maxLines: isMultiline ? 5 : 1,
        decoration: InputDecoration(
          suffixIcon: isSuffix ? Icon(icon) : null,
          prefixIcon: isSuffix
              ? null
              : Padding(
                  padding: isMultiline
                      ? const EdgeInsets.only(bottom: 80)
                      : EdgeInsets.zero,
                  child: Icon(icon),
                ),
          hintText: hintName,
          hintStyle: TextStyle(color: Colors.grey[600]),
          fillColor: lightGreyColor,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }

  _showDialogBookingForm() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.all(10.0),
            content: Container(
              margin: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 13.0, right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Hey there",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "For booking Fill Form",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        textFieldMethod('Name', Icons.person),
                        SizedBox(
                          height: 10,
                        ),
                        textFieldMethod('Email', Icons.email),
                        SizedBox(
                          height: 10,
                        ),
                        RoundedLoadingButton(
                          borderRadius: 20,
                          height: 40,
                          width: 100,
                          onPressed: () async {},
                          color: Colors.pink,
                          animateOnTap: true,
                          controller: _btnController,
                          child: Text(
                            "Pay Now",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .apply(
                                  color: Colors.white,
                                )
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.close, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  _dialog2() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.all(10.0),
            content: Container(
              margin: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        bottom: 20, left: 20, right: 20, top: 50),
                    margin: EdgeInsets.only(top: 13.0, right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'COME JOIN US',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Want to join us as Celebrity or user , your choice',
                            style: TextStyle(
                              color: greyColor,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RoundedLoadingButton(
                          borderRadius: 20,
                          height: 30,
                          width: 100,
                          onPressed: () async {},
                          color: Colors.pink,
                          animateOnTap: true,
                          controller: _btnController,
                          child: Text(
                            "User",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .apply(
                                  color: Colors.white,
                                )
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RoundedLoadingButton(
                          borderRadius: 20,
                          height: 30,
                          width: 100,
                          onPressed: () async {},
                          elevation: 5,
                          color: Colors.white,
                          animateOnTap: true,
                          controller: _btnController,
                          child: Text(
                            "Celebrity",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .apply(
                                  color: Colors.black,
                                )
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.red,
                          // child: Icon(Icons.close, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  _showDialogAddService() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.all(10.0),
            content: Container(
              margin: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 13.0, right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Add Service",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "At your Service",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormFieldWidget(
                          controller: serviceTextEditingController,
                          hintText: 'Service',
                          textInputType: TextInputType.text,
                        ),
                        FormFieldWidget(
                          controller: priceServiceTextEditingController,
                          hintText: 'Price for Service',
                          textInputType: TextInputType.text,
                        ),
                        FormFieldWidget(
                          controller: detailsTextEditingController,
                          hintText: 'Details about it',
                          textInputType: TextInputType.multiline,
                          maxLines: 6,
                          lines: 6,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RoundedLoadingButton(
                          borderRadius: 20,
                          height: 40,
                          width: 100,
                          onPressed: () async {},
                          color: Colors.pink,
                          animateOnTap: true,
                          controller: _btnController,
                          child: Text(
                            "Upload",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .apply(
                                  color: Colors.white,
                                )
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.close, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget bodyWidget1(String imgPath, {bool isNotFromMostPopular = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 200.0,
        ),
        alignment: Alignment.bottomLeft,
        // padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/back.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: isNotFromMostPopular
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Container(
            constraints: BoxConstraints.expand(
              height: isNotFromMostPopular ? 60 : 70,
            ),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 5,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.black38,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Celebrity Name',
                        style: TextStyle(
                            color: whiteColor,
                            letterSpacing: 0.5,
                            fontSize: 16),
                      ),
                      isNotFromMostPopular
                          ? Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Online',
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 10),
                                ),
                              ],
                            )
                          : Text(
                              'Singer',
                              style: TextStyle(color: whiteColor, fontSize: 12),
                            ),
                      Text(
                        '\$213 Raised',
                        style:
                            TextStyle(color: Colors.orange[600], fontSize: 12),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: isNotFromMostPopular
                        ? const Text('Start over')
                        : Row(
                            children: const [
                              Text('Start Now'),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_right_alt_sharp)
                            ],
                          ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        primary: darkpinkColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listTileWidget(String text, Function onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(text),
        onTap: () {
          onTap();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var texttheme = Theme.of(context).textTheme;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                size: 25,
                color: blackColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'WeZyou',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          appBarIcon('', Icons.message, () {
            Navigator.of(context).pushNamed(InboxScreen.routeName);
          }),
          const SizedBox(
            width: 10,
          ),
          appBarIcon('', Icons.notifications_active_outlined, () {
            Navigator.of(context).pushNamed(NotificationScreen.routeName);
          }),
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            listTileWidget('Celebrity details screen', () {
              Navigator.of(context).pushNamed(CelebrityDetailsScreen.routeName);
            }),
            listTileWidget('Profile', () {
              Navigator.of(context).pushNamed(ProfilePage.routeName);
            }),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () {
              // _showDialogAddService();
              // _showDialogBookingForm();
              // _dialog1('SANP OUT OF CASH', 'Please Check your balance',
              //     'Hold Order', 'Re - Enter Details');
              // _dialog1(
              //     'ORDER COMPLETE',
              //     'Your Order No. #123-456 has been placed',
              //     'Thanks',
              //     'Track Order');
              // _dialog1('CONGRATULATIONS!', 'Your Phone Number is verified',
              //     'Start It', 'Not Now');
              // _dialog1('CONGRATULATIONS!', 'Your Account has been created',
              //     'Visit Profile', 'Not Now');
              _dialog2();
            },
            child: const Icon(Icons.search),
            elevation: 2.0,
          ),
        ),
      ),
      body: _index == 0
          ? Column(
              children: [
                SizedBox(
                  height: height / 3.5,
                  child: bodyWidget1('', isNotFromMostPopular: true),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Most Popular'), Icon(Icons.more_horiz)],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                bodyWidget1(''),
              ],
            )
          : _index == 1
              ? CheckOut()
              : _index == 2
                  ? Transactionscreen()
                  : _index == 3
                      ? CustomerScreen()
                      : Container(),
      // body: Column(
      //   children: [
      //     ListTile(
      //       title: const Text(
      //         'New Orders',
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 18,
      //         ),
      //       ),
      //       trailing: Text(
      //         'See All',
      //         style: TextStyle(
      //           color: Colors.deepPurple[300],
      //           fontSize: 14,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 5,
      //     ),
      //     ListTile(
      //       leading: Container(
      //         height: 50,
      //         width: 50,
      //         decoration: BoxDecoration(
      //           color: Colors.red,
      //           borderRadius: BorderRadius.circular(5),
      //         ),
      //       ),
      //       title: Text(
      //         'Video demand',
      //       ),
      //       subtitle: Text(
      //         'Yesterday',
      //         style: TextStyle(color: Colors.grey[600], fontSize: 12),
      //       ),
      //       trailing: Row(
      //         mainAxisSize: MainAxisSize.min,
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           Text('\$56,293'),
      //           SizedBox(
      //             width: 3,
      //           ),
      //           Icon(Icons.arrow_forward_ios),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.pink,
        // notchedShape: const CircularNotchedRectangle(),
        onTabSelected: (val) {
          setState(() {
            _index = val;
          });
        },
        items: [
          FABBottomAppBarItem(iconData: Icons.home),
          FABBottomAppBarItem(iconData: Icons.search),
          FABBottomAppBarItem(iconData: Icons.ac_unit),
          FABBottomAppBarItem(iconData: Icons.more_horiz),
        ],
      ),
    );
  }
}
