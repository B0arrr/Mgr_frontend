// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_employment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEmploymentImpl _$$UserEmploymentImplFromJson(Map<String, dynamic> json) =>
    _$UserEmploymentImpl(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num).toInt(),
      employment_id: (json['employment_id'] as num).toInt(),
      company_id: (json['company_id'] as num).toInt(),
      department_id: (json['department_id'] as num).toInt(),
      position_id: (json['position_id'] as num).toInt(),
      start_date: DateTime.parse(json['start_date'] as String),
      end_date: DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$UserEmploymentImplToJson(
        _$UserEmploymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'employment_id': instance.employment_id,
      'company_id': instance.company_id,
      'department_id': instance.department_id,
      'position_id': instance.position_id,
      'start_date': instance.start_date.toIso8601String(),
      'end_date': instance.end_date.toIso8601String(),
    };
