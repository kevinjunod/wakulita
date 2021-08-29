import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';

class Cart extends StatefulWidget {
  Cart();
  static const routeName = '/cart';
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
            Text("CART"),
          ],
        ),
      ),
    );
  }
}
