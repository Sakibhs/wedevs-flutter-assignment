import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedevs_assignment/model/profile_model.dart';

import '../common/app_loading.dart';
import '../model/user_model.dart';
import 'package:http/http.dart' as http;
class ProfileRepo{
  Future<ProfileModel?> getProfile() async {
    showLoading();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String apiUrl = "https://apptest.dokandemo.com/wp-json/wp/v2/users/1";
    String token = prefs.getString("token")!;
    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        return ProfileModel.fromJson(jsonDecode(response.body));

      } else {
        return null;
      }
    } catch (e) {
      print('Error: $e');
    } finally{
      hideLoading();
    }
    return null;
  }

}