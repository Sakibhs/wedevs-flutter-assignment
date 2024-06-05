import 'dart:convert';
import 'package:http/http.dart' as http;
class LoginRepo{

  Future<bool> login(String userName, String password) async {
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
    if (response.statusCode == 200) {
      return true;
    } else {
      Map<String, dynamic> responseMap = jsonDecode(response.body);
      throw Exception(responseMap['message']);
    }


  }

}