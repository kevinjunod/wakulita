import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/widgets/button.dart';
import 'package:wakulita_user/API/services.dart';
import 'package:wakulita_user/screens/auth/otp/otp.dart';

class Register extends StatefulWidget {
  Register();
  static const routeName = '/register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> form = new GlobalKey<FormState>();
  Services services = new Services();
  String _email;

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
                    Image.asset('$imgPath/download.png'),
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
                              labelText: "Registration Email",
                              hintText: 'Example@123.com',
                            ),
                            initialValue: _email,
                            validator: (val) {
                              final pattern = new RegExp(
                                  r'([\d\w]{1,}@[\w\d]{1,}\.[\w]{1,})');
                              return pattern.hasMatch(val)
                                  // return val.isEmpty
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
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                label: 'REGISTER',
                select: () {
                  if (validateLogin()) {
                    services.register(_email);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTP(
                          email: _email,
                        ),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
