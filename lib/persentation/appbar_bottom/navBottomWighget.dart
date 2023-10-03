import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class NavBottom extends StatefulWidget {
  const NavBottom({super.key, required this.nopage});
   final  int nopage;
  @override
  State<NavBottom> createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {

  final GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 0,
      height: 50.0,
      items: const <Widget>[
        Icon(Icons.home, size: 30),
        Icon(Icons.favorite_border, size: 30),
        Icon(Icons.supervised_user_circle, size: 30),
        Icon(Icons.notifications_active, size: 30),
        Icon(Icons.more_vert, size: 30),
      ],
      color: Colors.grey,
      buttonBackgroundColor: Colors.grey,
      backgroundColor: ColorManager.white,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          index =  widget.nopage;
        });
      },
    );
  }
}
