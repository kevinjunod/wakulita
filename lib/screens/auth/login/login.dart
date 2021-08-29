import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/widgets/button.dart';
import 'package:wakulita_user/screens/dashboard/bottomNav.dart';

class Login extends StatefulWidget {
  Login();
  static const routeName = '/register';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email = "evarbion@gmail.com";
  GlobalKey<FormState> form = new GlobalKey<FormState>();

  bool validateLogin() {
    final validForm = form.currentState;
    if (validForm.validate()) {
      validForm.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget alert = FlatButton(
      child: Text("Ok"),
      onPressed: () => Navigator.of(context).pop(),
    );

    AlertDialog _alertLogin = AlertDialog(
      content: Text("Your email is invalid, please check again."),
      actions: [alert],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 5),
        color: colorWhite,
        width: double.infinity,
        height: deviceHeight,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      '$imgPath/download.png',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: form,
                      child: Column(
                        children: [
                          new TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintText: 'Example@123.com',
                            ),
                            initialValue: _email,
                            validator: (val) {
                              final pattern = new RegExp(
                                  r'([\d\w]{1,}@[\w\d]{1,}\.[\w]{1,})');
                              return pattern.hasMatch(val)
                                  ? null
                                  : 'email is invalid';
                            },
                            onChanged: (valEmail) => {
                              _email = valEmail,
                              print(_email),
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Button(
                    label: 'LOGIN',
                    select: () {
                      if (validateLogin()) {
                        print("login sukses");
                        //* login sukses diarahkan ke dashboard
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNav(),
                          ),
                        );
                      } else {
                        print("login gagal");
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return _alertLogin;
                          },
                        );
                      }
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//! REMEMBER ME (example)

// bool _isRemember = false;

// void _rememberMe() {
//   setState(() {
//     _isRemember = !_isRemember;
//     print(_isRemember);
//   });
// }

// Row(
// children: <Widget>[
// SizedBox(
//   width: 13.0,
// ),
// GestureDetector(
//   onTap: _rememberMe,
//   child: RadioButton(
//     label: "Remember me",
//     selectedType: _isRemember,
//     select: _rememberMe,
//   ),
// ),
// ],
// ),
