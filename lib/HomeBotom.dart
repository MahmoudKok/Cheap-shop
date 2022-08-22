import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'bottomControl.dart';
import 'modules/Add Products/addProduct.dart';
import 'modules/Home/Home.dart';
import 'modules/Profile/profile.dart';
import 'package:get/get.dart';

BotoCont controler = Get.put<BotoCont>(BotoCont());

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  final List<Widget> bottomBarIcons = [
    Icon(
      Icons.home,
    ),
    Icon(
      Icons.add,
    ),
    Icon(
      Icons.person,
    ),
  ];

  int id = 1;
  Widget? sc;

  final bottomkey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white, size: 35),
        ),
        key: bottomkey,
        child: CurvedNavigationBar(
            animationCurve: Curves.easeInOutSine,
            animationDuration: Duration(milliseconds: 500),
            buttonBackgroundColor: Color(0xFFDD5E2B),
            backgroundColor: Colors.transparent,
            color: Color(0xFFDD5E2B),
            height: 50,
            items: bottomBarIcons,
            index: id,
            onTap: (id) {
              setState(() {
                this.id = id;
              });
            }),
      ),
      body: screen[id],
    );
  }
}
