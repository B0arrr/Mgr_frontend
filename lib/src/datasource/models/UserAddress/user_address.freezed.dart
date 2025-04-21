// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return _UserAddress.fromJson(json);
}

/// @nodoc
mixin _$UserAddress {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  set user_id(int value) => throw _privateConstructorUsedError;
  int get address_id => throw _privateConstructorUsedError;
  set address_id(int value) => throw _privateConstructorUsedError;
  bool get is_remote => throw _privateConstructorUsedError;
  set is_remote(bool value) => throw _privateConstructorUsedError;
  Address? get addresses => throw _privateConstructorUsedError;
  set addresses(Address? value) => throw _privateConstructorUsedError;

  /// Serializes this UserAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressCopyWith<UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res, UserAddress>;
  @useResult
  $Res call(
      {int id,
      int user_id,
      int address_id,
      bool is_remote,
      Address? addresses});

  $AddressCopyWith<$Res>? get addresses;
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res, $Val extends UserAddress>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? address_id = null,
    Object? is_remote = null,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      address_id: null == address_id
          ? _value.address_id
          : address_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_remote: null == is_remote
          ? _value.is_remote
          : is_remote // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }

  /// Create a copy of UserAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get addresses {
    if (_value.addresses == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.addresses!, (value) {
      return _then(_value.copyWith(addresses: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAddressImplCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$$UserAddressImplCopyWith(
          _$UserAddressImpl value, $Res Function(_$UserAddressImpl) then) =
      __$$UserAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int user_id,
      int address_id,
      bool is_remote,
      Address? addresses});

  @override
  $AddressCopyWith<$Res>? get addresses;
}

/// @nodoc
class __$$UserAddressImplCopyWithImpl<$Res>
    extends _$UserAddressCopyWithImpl<$Res, _$UserAddressImpl>
    implements _$$UserAddressImplCopyWith<$Res> {
  __$$UserAddressImplCopyWithImpl(
      _$UserAddressImpl _value, $Res Function(_$UserAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? address_id = null,
    Object? is_remote = null,
    Object? addresses = freezed,
  }) {
    return _then(_$UserAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      address_id: null == address_id
          ? _value.address_id
          : address_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_remote: null == is_remote
          ? _value.is_remote
          : is_remote // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressImpl implements _UserAddress {
  _$UserAddressImpl(
      {required this.id,
      required this.user_id,
      required this.address_id,
      required this.is_remote,
      required this.addresses});

  factory _$UserAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressImplFromJson(json);

  @override
  int id;
  @override
  int user_id;
  @override
  int address_id;
  @override
  bool is_remote;
  @override
  Address? addresses;

  @override
  String toString() {
    return 'UserAddress(id: $id, user_id: $user_id, address_id: $address_id, is_remote: $is_remote, addresses: $addresses)';
  }

  /// Create a copy of UserAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressImplCopyWith<_$UserAddressImpl> get copyWith =>
      __$$UserAddressImplCopyWithImpl<_$UserAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressImplToJson(
      this,
    );
  }
}

abstract class _UserAddress implements UserAddress {
  factory _UserAddress(
      {required int id,
      required int user_id,
      required int address_id,
      required bool is_remote,
      required Address? addresses}) = _$UserAddressImpl;

  factory _UserAddress.fromJson(Map<String, dynamic> json) =
      _$UserAddressImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  int get user_id;
  set user_id(int value);
  @override
  int get address_id;
  set address_id(int value);
  @override
  bool get is_remote;
  set is_remote(bool value);
  @override
  Address? get addresses;
  set addresses(Address? value);

  /// Create a copy of UserAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressImplCopyWith<_$UserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
