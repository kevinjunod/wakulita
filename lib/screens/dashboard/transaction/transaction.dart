import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';

class Transaction extends StatefulWidget {
  Transaction();
  static const routeName = '/transaction';
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
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
            Text("TRANSACTION"),
          ],
        ),
      ),
    );
  }
}
