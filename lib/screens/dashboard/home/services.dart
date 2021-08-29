import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/widgets/menu.dart';

class HomeServices extends StatefulWidget {
  @override
  _HomeServicesState createState() => _HomeServicesState();
}

class _HomeServicesState extends State<HomeServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorGreyText.withOpacity(.2),
            spreadRadius: .3,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
      ),
      margin: EdgeInsets.only(
          top: deviceHeight / 7,
          left: deviceHeight / 14,
          right: deviceHeight / 14),
      width: double.infinity,
      height: deviceHeight / 6,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MenuWidget(
              function: () => print("subscribe"),
              image: '$imgPath/langganan.png',
              title: 'Subscribe',
            ),
            MenuWidget(
              function: () => print("event"),
              image: '$imgPath/acara.png',
              title: 'Event',
            ),
            MenuWidget(
              function: () => print("forzen food"),
              image: '$imgPath/frozenfood.png',
              title: 'Frozen',
            ),
          ],
        ),
      ),
    );
  }
}
