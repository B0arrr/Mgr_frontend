// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRoleImpl _$$UserRoleImplFromJson(Map<String, dynamic> json) =>
    _$UserRoleImpl(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num).toInt(),
      role_id: (json['role_id'] as num).toInt(),
      roles: json['roles'] == null
          ? null
          : Role.fromJson(json['roles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRoleImplToJson(_$UserRoleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'role_id': instance.role_id,
      'roles': instance.roles,
    };
