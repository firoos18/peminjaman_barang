import 'dart:convert';

import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/static/static.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/transaksi_response_entity.dart/transaksi_response_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class TransaksiApiService {
  final SharedPreferences _sharedPreferences;

  const TransaksiApiService(this._sharedPreferences);

  Future<TransaksiResponseEntity> getAllAdminTransaksi() async {
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('$baseUrl/transaksi/'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return TransaksiResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<TransaksiResponseEntity> getAllUserTransaksi() async {
    final token = _sharedPreferences.getString('token');
    final uid = _sharedPreferences.getString('uid');

    final response = await http.get(
      Uri.parse('$baseUrl/transaksi/$uid'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return TransaksiResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
