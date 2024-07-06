import 'dart:convert';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/static/static.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user_response/user_response_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class UserApiService {
  final SharedPreferences _sharedPreferences;

  const UserApiService(this._sharedPreferences);

  Future<UserResponseEntity> getUserInfo() async {
    final uid = _sharedPreferences.getString('uid');
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('$baseUrl/user/$uid'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return UserResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<UserResponseEntity> getAdminInfo() async {
    final uid = _sharedPreferences.getString('uid');
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('$baseUrl/admin/$uid'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return UserResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
