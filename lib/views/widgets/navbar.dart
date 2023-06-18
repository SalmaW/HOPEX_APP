import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import '../../config/app_icons.dart';
import '../screens/06.Ranks.dart';
import '../screens/03.home.dart';
import '../screens/04.Wallet.dart';
import '../screens/05.Scan.dart';
import '../screens/07.Maps.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _index = 0;
  final Screens = [
    HomeSc(),
    WalletSc(),
    ScanSc(),
    RanksSc(),
    MapsSc(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          selectedItemColor: AppColor.APrimaryColor,
          unselectedItemColor: AppColor.NoneActive,
          onTap: (value){
            setState(() {
              _index =value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: AppIcon.wallet,
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code_scanner,
                size: 45,
              ),
              label: "Scan",
            ),
            BottomNavigationBarItem(
              icon: AppIcon.ranks,
              label: "Ranks",
            ),
            BottomNavigationBarItem(
              icon: AppIcon.maps,
              label: "Maps",
            ),
          ],
        ));
  }
}
