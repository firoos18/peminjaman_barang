import 'dart:convert';

import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/static/static.dart';
import 'package:peminjaman_barang/features/peminjaman/data/models/pinjam_model.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/peminjaman_response/peminjaman_response_entity.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/pinjam_response/pinjam_response_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class PeminjamanApiService {
  final SharedPreferences _sharedPreferences;

  const PeminjamanApiService(this._sharedPreferences);

  Future<PeminjamanResponseEntity> getAllPeminjaman() async {
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('$baseUrl/peminjaman/'),
      headers: {
        'Authorization': "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return PeminjamanResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<PinjamResponseEntity> pinjamBarang(PinjamModel pinjamModel) async {
    final token = _sharedPreferences.getString('token');

    final response = await http.post(
      Uri.parse('$baseUrl/peminjaman/'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(pinjamModel.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return PinjamResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
