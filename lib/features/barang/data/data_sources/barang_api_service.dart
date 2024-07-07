import 'dart:convert';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/static/static.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/add_barang_response/add_barang_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin_response/barang_admin_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_by_id_response/barang_by_id_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/delete_barang_response/delete_barang_response_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

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

  Future<BarangByIdResponseEntity> getBarangById(String id) async {
    final token = _sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('$baseUrl/barang/$id'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return BarangByIdResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<AddBarangResponseEntity> addBarang(
      AddBarangModel addBarangModel) async {
    final token = _sharedPreferences.getString('token');
    final uid = _sharedPreferences.getString('uid');

    addBarangModel.idAdmin = uid;

    final response = await http.post(
      Uri.parse('$baseUrl/barang/add'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(addBarangModel.toJson()),
    );

    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return AddBarangResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<BarangByIdResponseEntity> updateBarang(
      String id, AddBarangModel addBarangModel) async {
    final token = _sharedPreferences.getString('token');

    final response = await http.patch(
      Uri.parse('$baseUrl/barang/edit/$id'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(addBarangModel.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return BarangByIdResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<DeleteBarangResponseEntity> deleteBarang(String id) async {
    final token = _sharedPreferences.getString('token');

    final response = await http.delete(
      Uri.parse('$baseUrl/barang/delete/$id'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return DeleteBarangResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
