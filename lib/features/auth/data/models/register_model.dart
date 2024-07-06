import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
  final String? email;
  final String? password;
  final String? repeatPassword;
  final String? nama;
  final String? alamat;

  RegisterModel({
    this.email,
    this.nama,
    this.password,
    this.repeatPassword,
    this.alamat,
  });

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
