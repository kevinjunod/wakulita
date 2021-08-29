import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/widgets/searchBar.dart';
import 'package:wakulita_user/screens/dashboard/home/content.dart';
import 'package:wakulita_user/screens/dashboard/home/services.dart';

class Home extends StatefulWidget {
  Home();
  static const routeName = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: 10),
        color: colorPrimary,
        child: Stack(
          children: <Widget>[
            HomeContent(),
            HomeServices(),
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
