import 'package:flutter/material.dart';
import 'package:we_z_you/UI/Homepage/bottom_navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {},
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.pink,
        // notchedShape: const CircularNotchedRectangle(),
        onTabSelected: (val) {},
        items: [
          FABBottomAppBarItem(iconData: Icons.home),
          FABBottomAppBarItem(iconData: Icons.search),
          FABBottomAppBarItem(iconData: Icons.account_circle),
          FABBottomAppBarItem(iconData: Icons.more_horiz),
        ],
      ),
    );
  }
}
