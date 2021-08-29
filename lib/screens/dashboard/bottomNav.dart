import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/screens/dashboard/home/home.dart';
import 'package:wakulita_user/screens/dashboard/transaction/transaction.dart';
import 'package:wakulita_user/screens/dashboard/cart/cart.dart';
import 'package:wakulita_user/screens/dashboard/profile/profile.dart';

class BottomNav extends StatefulWidget {
  BottomNav();
  static const routeName = '/navigation';
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final menus = [
    Home(),
    Transaction(),
    Cart(),
    Profile(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menus[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorWhite,
        selectedItemColor: colorDarkPrimary,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: colorPrimary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Transaction",
            backgroundColor: colorPrimary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
            backgroundColor: colorPrimary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
            backgroundColor: colorPrimary,
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
