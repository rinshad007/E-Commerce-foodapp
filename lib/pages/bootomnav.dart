import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/order.dart';
import 'package:fooddelivery/pages/profile.dart';
import 'package:fooddelivery/pages/wallet.dart';

import 'home.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabindex=0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage=Home();
    order=Order();
    profile=Profile();
    wallet=Wallet();
    pages=[homepage,order,wallet,profile,];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
          height: 65,
          backgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentTabindex=index;
            });
          },
          items: [
        Icon(CupertinoIcons.home,color: Colors.white,),
        Icon(CupertinoIcons.bag,color: Colors.white,),
        Icon(CupertinoIcons.money_dollar_circle,color: Colors.white,),
        Icon(CupertinoIcons.profile_circled,color: Colors.white,)

      ]),
      body: pages[currentTabindex],
    );
  }
}
