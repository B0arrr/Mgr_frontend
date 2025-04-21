// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserManagementImpl _$$UserManagementImplFromJson(Map<String, dynamic> json) =>
    _$UserManagementImpl(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num).toInt(),
      manager_id: (json['manager_id'] as num).toInt(),
      users: json['users'] == null
          ? null
          : User.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserManagementImplToJson(
        _$UserManagementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'manager_id': instance.manager_id,
      'users': instance.users,
    };
