// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      is_active: json['is_active'] as bool,
      has_flexible_working_hours: json['has_flexible_working_hours'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'password': instance.password,
      'is_active': instance.is_active,
      'has_flexible_working_hours': instance.has_flexible_working_hours,
    };
