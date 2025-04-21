// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRole _$UserRoleFromJson(Map<String, dynamic> json) {
  return _UserRole.fromJson(json);
}

/// @nodoc
mixin _$UserRole {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  set user_id(int value) => throw _privateConstructorUsedError;
  int get role_id => throw _privateConstructorUsedError;
  set role_id(int value) => throw _privateConstructorUsedError;
  Role? get roles => throw _privateConstructorUsedError;
  set roles(Role? value) => throw _privateConstructorUsedError;

  /// Serializes this UserRole to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRoleCopyWith<UserRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleCopyWith<$Res> {
  factory $UserRoleCopyWith(UserRole value, $Res Function(UserRole) then) =
      _$UserRoleCopyWithImpl<$Res, UserRole>;
  @useResult
  $Res call({int id, int user_id, int role_id, Role? roles});

  $RoleCopyWith<$Res>? get roles;
}

/// @nodoc
class _$UserRoleCopyWithImpl<$Res, $Val extends UserRole>
    implements $UserRoleCopyWith<$Res> {
  _$UserRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? role_id = null,
    Object? roles = freezed,
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
      role_id: null == role_id
          ? _value.role_id
          : role_id // ignore: cast_nullable_to_non_nullable
              as int,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }

  /// Create a copy of UserRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res>? get roles {
    if (_value.roles == null) {
      return null;
    }

    return $RoleCopyWith<$Res>(_value.roles!, (value) {
      return _then(_value.copyWith(roles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRoleImplCopyWith<$Res>
    implements $UserRoleCopyWith<$Res> {
  factory _$$UserRoleImplCopyWith(
          _$UserRoleImpl value, $Res Function(_$UserRoleImpl) then) =
      __$$UserRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int user_id, int role_id, Role? roles});

  @override
  $RoleCopyWith<$Res>? get roles;
}

/// @nodoc
class __$$UserRoleImplCopyWithImpl<$Res>
    extends _$UserRoleCopyWithImpl<$Res, _$UserRoleImpl>
    implements _$$UserRoleImplCopyWith<$Res> {
  __$$UserRoleImplCopyWithImpl(
      _$UserRoleImpl _value, $Res Function(_$UserRoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? role_id = null,
    Object? roles = freezed,
  }) {
    return _then(_$UserRoleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      role_id: null == role_id
          ? _value.role_id
          : role_id // ignore: cast_nullable_to_non_nullable
              as int,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRoleImpl implements _UserRole {
  _$UserRoleImpl(
      {required this.id,
      required this.user_id,
      required this.role_id,
      this.roles});

  factory _$UserRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRoleImplFromJson(json);

  @override
  int id;
  @override
  int user_id;
  @override
  int role_id;
  @override
  Role? roles;

  @override
  String toString() {
    return 'UserRole(id: $id, user_id: $user_id, role_id: $role_id, roles: $roles)';
  }

  /// Create a copy of UserRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRoleImplCopyWith<_$UserRoleImpl> get copyWith =>
      __$$UserRoleImplCopyWithImpl<_$UserRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRoleImplToJson(
      this,
    );
  }
}

abstract class _UserRole implements UserRole {
  factory _UserRole(
      {required int id,
      required int user_id,
      required int role_id,
      Role? roles}) = _$UserRoleImpl;

  factory _UserRole.fromJson(Map<String, dynamic> json) =
      _$UserRoleImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  int get user_id;
  set user_id(int value);
  @override
  int get role_id;
  set role_id(int value);
  @override
  Role? get roles;
  set roles(Role? value);

  /// Create a copy of UserRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRoleImplCopyWith<_$UserRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
