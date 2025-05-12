// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserScheduleImpl _$$UserScheduleImplFromJson(Map<String, dynamic> json) =>
    _$UserScheduleImpl(
      id: (json['id'] as num).toInt(),
      required: json['required'],
      user_id: (json['user_id'] as num).toInt(),
      scheduled_start_work:
          DateTime.parse(json['scheduled_start_work'] as String),
      scheduled_end_work: DateTime.parse(json['scheduled_end_work'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserScheduleImplToJson(_$UserScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'required': instance.required,
      'user_id': instance.user_id,
      'scheduled_start_work': instance.scheduled_start_work.toIso8601String(),
      'scheduled_end_work': instance.scheduled_end_work.toIso8601String(),
      'user': instance.user,
    };
