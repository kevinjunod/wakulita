import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/screens/welcome/welcome.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  Splash();
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  Future<Widget> loadFromFuture() async {
    return Future.value(
      new WelcomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new WelcomePage(),
      title: new Text(
        'Wakulita',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
      image: new Image.asset(
        '$imgPath/download.png',
      ),
      backgroundColor: Color(0xffFEB612),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      useLoader: false,
    );
  }
}
