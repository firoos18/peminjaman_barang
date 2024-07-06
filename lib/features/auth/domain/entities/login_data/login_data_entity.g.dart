// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataEntityImpl _$$LoginDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginDataEntityImpl(
      email: json['email'] as String?,
      uid: json['uid'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$LoginDataEntityImplToJson(
        _$LoginDataEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'uid': instance.uid,
      'token': instance.token,
    };
