import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class LoginRepo{

  Future<bool> login(String userName, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var client = http.Client();
    const Map<String, String> header = {
      'Content-type': 'application/x-www-form-urlencoded',
    };
    final uri = Uri.parse(
        'https://apptest.dokandemo.com/wp-json/jwt-auth/v1/token');
    final response = await client.post(uri, body: {
      'username' : userName,
      'password': password
    }, headers: header, encoding: Encoding.getByName('utf-8'),);
    Map<String, dynamic> responseMap = jsonDecode(response.body);
    if (response.statusCode == 200) {
      String token = responseMap['token'];
      prefs.setString('token', token);
      return true;
    } else {
      throw Exception(responseMap['message']);
    }


  }

}