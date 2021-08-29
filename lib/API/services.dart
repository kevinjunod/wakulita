import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:wakulita_user/contants.dart';

class Services {
  Future<String> register(
    String email,
  ) async {
    final response = await http.post(
      baseUrl + "auth/register",
      headers: {"Content-Type": "application/json"},
      body: convert.json.encode(
        {
          "email": email,
          "role": 9999,
        },
      ),
    );
    print(response.body);
  }

  Future<String> resendOTP(
    String email,
    String id,
  ) async {
    final response = await http.post(
      baseUrl + "auth/resend_otp",
      headers: {"Content-Type": "application/json"},
      body: convert.json.encode(
        {
          "email": email,
          "id": id,
          "role": 9999,
        },
      ),
    );
    print(response.body);
  }

  void verifyOTP(List<String> arguments) async {
    String _otp;
    String _email;
    var url = baseUrl + "auth/verify_otp";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      _otp = jsonResponse['otp'];
      _email = jsonResponse['email'];
    }
  }

  Future<String> login(
    String email,
  ) async {
    final response = await http.post(
      baseUrl + "auth/login",
      headers: {"Content-Type": "application/json"},
      body: convert.json.encode(
        {
          "email": email,
        },
      ),
    );
    print(response.body);
  }
}
