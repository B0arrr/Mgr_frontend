// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressImpl _$$UserAddressImplFromJson(Map<String, dynamic> json) =>
    _$UserAddressImpl(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num).toInt(),
      address_id: (json['address_id'] as num).toInt(),
      is_remote: json['is_remote'] as bool,
      addresses: json['addresses'] == null
          ? null
          : Address.fromJson(json['addresses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserAddressImplToJson(_$UserAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'address_id': instance.address_id,
      'is_remote': instance.is_remote,
      'addresses': instance.addresses,
    };
