import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin_response/barang_admin_response_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final baseUrl = dotenv.env['baseUrl'];

class BarangApiService {
  final SharedPreferences _sharedPreferences;

  const BarangApiService(this._sharedPreferences);

  Future<BarangAdminResponseEntity> getListBarang() async {
    final token = _sharedPreferences.getString('token');
    final uid = _sharedPreferences.getString('uid');

    final response = await http.get(
      Uri.parse('$baseUrl/barang/admin/$uid'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return BarangAdminResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
