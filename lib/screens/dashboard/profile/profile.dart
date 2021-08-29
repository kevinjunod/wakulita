import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';

class Profile extends StatefulWidget {
  Profile();
  static const routeName = '/profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        padding: EdgeInsets.only(top: 10),
        color: colorPrimary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("PROFILE"),
          ],
        ),
      ),
    );
  }
}
