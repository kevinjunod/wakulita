import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/screens/welcome/splashScreen.dart';
import 'package:wakulita_user/screens/auth/login/login.dart';
import 'package:wakulita_user/screens/dashboard/bottomNav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final startApp = Splash();
  runApp(
    MyApp(
      startApp,
    ),
  );
}

class MyApp extends StatelessWidget {
  final Widget startApp;
  MyApp(this.startApp);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wakulita',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: colorPrimary,
        accentColor: colorSecondary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: startApp,
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => BottomNav(),
      },
    );
  }
}
