import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:wedevs_assignment/common/app_loading.dart';

class UpdateProfileRepo{
  Future<bool> _updateUser(int userId, Map<String, dynamic> userData) async {
    showLoading();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String apiUrl = "http://apptest.dokandemo.com/wp-json/wp/v2/users";
    String token = prefs.getString("token")!;
    final url = '$apiUrl/$userId';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: json.encode(userData),
      );

      if (response.statusCode == 200) {
        print('User updated successfully');
        return true;
      } else {
        print('Failed to update user: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Error: $e');
    } finally {
     hideLoading();
    }
    return false;
  }
}