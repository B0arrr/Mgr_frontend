// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_workhour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserWorkHourImpl _$$UserWorkHourImplFromJson(Map<String, dynamic> json) =>
    _$UserWorkHourImpl(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num).toInt(),
      day: DateTime.parse(json['day'] as String),
      start_time: DateTime.parse(json['start_time'] as String),
      end_time: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserWorkHourImplToJson(_$UserWorkHourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'day': instance.day.toIso8601String(),
      'start_time': instance.start_time.toIso8601String(),
      'end_time': instance.end_time?.toIso8601String(),
      'user': instance.user,
    };
