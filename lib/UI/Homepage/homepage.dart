import 'package:flutter/material.dart';
import 'package:we_z_you/UI/Homepage/bottom_navbar.dart';
import 'package:we_z_you/UI/Homepage/customer_msg.dart';
import 'package:we_z_you/UI/Homepage/customer_screen.dart';
import 'package:we_z_you/UI/checkout.dart';
import 'package:we_z_you/UI/transaction_screen.dart';
import 'package:we_z_you/constants/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  appBarIcon(String text, IconData icon) {
    return InkWell(
      onTap: () {
        bottomModelSheet();
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

  void bottomModelSheet() {
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
          appBarIcon('', Icons.message),
          const SizedBox(
            width: 10,
          ),
          appBarIcon('', Icons.notifications_active_outlined),
        ],
      ),
      drawer: Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () {},
            child: const Icon(Icons.search),
            elevation: 2.0,
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: height / 3.5,
      //       child: bodyWidget1('', isNotFromMostPopular: true),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [Text('Most Popular'), Icon(Icons.more_horiz)],
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     bodyWidget1(''),
      //   ],
      // ),
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
      // body: CustomerMsg(),
      // body: CustomerScreen(),
      // body: Transaction_screen(),
      body: CheckOut(),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.pink,
        // notchedShape: const CircularNotchedRectangle(),
        onTabSelected: (val) {},
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
