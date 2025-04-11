// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmploymentImpl _$$EmploymentImplFromJson(Map<String, dynamic> json) =>
    _$EmploymentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      max_hours_per_day: (json['max_hours_per_day'] as num).toInt(),
      max_hours_per_week: (json['max_hours_per_week'] as num).toInt(),
    );

Map<String, dynamic> _$$EmploymentImplToJson(_$EmploymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'max_hours_per_day': instance.max_hours_per_day,
      'max_hours_per_week': instance.max_hours_per_week,
    };
