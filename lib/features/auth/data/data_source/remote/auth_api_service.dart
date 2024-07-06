import 'dart:convert';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/features/auth/data/models/login_model.dart';
import 'package:peminjaman_barang/features/auth/data/models/register_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/login_response/login_response_entity.dart';
import 'package:http/http.dart' as http;
import 'package:peminjaman_barang/features/auth/domain/entities/register_response/register_response_entity.dart';

const String baseUrl = 'https://peminjaman-barang.vercel.app';

class AuthApiService {
  Future<LoginResponseEntity> adminLogin(LoginModel loginModel) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/admin/login'),
      body: jsonEncode(loginModel.toJson()),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);

      return LoginResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<LoginResponseEntity> userLogin(LoginModel loginModel) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/user/login'),
      body: jsonEncode(loginModel.toJson()),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);

      return LoginResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<RegisterResponseEntity> adminRegister(
      RegisterModel registerModel) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/admin/register'),
      body: jsonEncode(registerModel.toJson()),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);

      return RegisterResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }

  Future<RegisterResponseEntity> userRegister(
      RegisterModel registerModel) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/user/register'),
      body: jsonEncode(
        registerModel.toJson(),
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);

      return RegisterResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);

      throw RequestErrorException(data['message']);
    }
  }
}
