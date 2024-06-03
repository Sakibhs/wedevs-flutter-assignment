import 'dart:convert';

import 'package:wedevs_assignment/model/register_error_model.dart';

import '../model/register_model.dart';
import 'package:http/http.dart' as http;
class RegisterRepo{

  Future<bool> register(RegisterModel registerModel) async {
    var client = http.Client();
    const Map<String, String> header = {
      'Content-type': 'application/json',
    };
    final uri = Uri.parse('https://apptest.dokandemo.com/wp-json/wp/v2/users/register');
    final response = await client.post(uri, body: jsonEncode(registerModel.toJson()), headers: header);
    if(response.statusCode == 200){
      return true;
    } else{
      Map<String, dynamic> responseMap = jsonDecode(response.body);
      throw Exception(responseMap['message']);
      // RegisterErrorModel model = RegisterErrorModel();
      // model = RegisterErrorModel.fromJson(jsonDecode(response.body));
      // throw Exception(model.message);
    }

  }

}