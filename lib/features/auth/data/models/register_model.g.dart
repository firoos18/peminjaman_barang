// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      email: json['email'] as String?,
      nama: json['nama'] as String?,
      password: json['password'] as String?,
      repeatPassword: json['repeatPassword'] as String?,
      alamat: json['alamat'] as String?,
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'repeatPassword': instance.repeatPassword,
      'nama': instance.nama,
      'alamat': instance.alamat,
    };
