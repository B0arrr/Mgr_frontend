// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserManager _$UserManagerFromJson(Map<String, dynamic> json) {
  return _UserManagement.fromJson(json);
}

/// @nodoc
mixin _$UserManager {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  set user_id(int value) => throw _privateConstructorUsedError;
  int get manager_id => throw _privateConstructorUsedError;
  set manager_id(int value) => throw _privateConstructorUsedError;
  User? get users => throw _privateConstructorUsedError;
  set users(User? value) => throw _privateConstructorUsedError;

  /// Serializes this UserManager to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserManager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserManagerCopyWith<UserManager> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagerCopyWith<$Res> {
  factory $UserManagerCopyWith(
          UserManager value, $Res Function(UserManager) then) =
      _$UserManagerCopyWithImpl<$Res, UserManager>;
  @useResult
  $Res call({int id, int user_id, int manager_id, User? users});

  $UserCopyWith<$Res>? get users;
}

/// @nodoc
class _$UserManagerCopyWithImpl<$Res, $Val extends UserManager>
    implements $UserManagerCopyWith<$Res> {
  _$UserManagerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserManager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? manager_id = null,
    Object? users = freezed,
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
      manager_id: null == manager_id
          ? _value.manager_id
          : manager_id // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of UserManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get users {
    if (_value.users == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.users!, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserManagementImplCopyWith<$Res>
    implements $UserManagerCopyWith<$Res> {
  factory _$$UserManagementImplCopyWith(_$UserManagementImpl value,
          $Res Function(_$UserManagementImpl) then) =
      __$$UserManagementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int user_id, int manager_id, User? users});

  @override
  $UserCopyWith<$Res>? get users;
}

/// @nodoc
class __$$UserManagementImplCopyWithImpl<$Res>
    extends _$UserManagerCopyWithImpl<$Res, _$UserManagementImpl>
    implements _$$UserManagementImplCopyWith<$Res> {
  __$$UserManagementImplCopyWithImpl(
      _$UserManagementImpl _value, $Res Function(_$UserManagementImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? manager_id = null,
    Object? users = freezed,
  }) {
    return _then(_$UserManagementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      manager_id: null == manager_id
          ? _value.manager_id
          : manager_id // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserManagementImpl implements _UserManagement {
  _$UserManagementImpl(
      {required this.id,
      required this.user_id,
      required this.manager_id,
      this.users});

  factory _$UserManagementImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserManagementImplFromJson(json);

  @override
  int id;
  @override
  int user_id;
  @override
  int manager_id;
  @override
  User? users;

  @override
  String toString() {
    return 'UserManager(id: $id, user_id: $user_id, manager_id: $manager_id, users: $users)';
  }

  /// Create a copy of UserManager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserManagementImplCopyWith<_$UserManagementImpl> get copyWith =>
      __$$UserManagementImplCopyWithImpl<_$UserManagementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserManagementImplToJson(
      this,
    );
  }
}

abstract class _UserManagement implements UserManager {
  factory _UserManagement(
      {required int id,
      required int user_id,
      required int manager_id,
      User? users}) = _$UserManagementImpl;

  factory _UserManagement.fromJson(Map<String, dynamic> json) =
      _$UserManagementImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  int get user_id;
  set user_id(int value);
  @override
  int get manager_id;
  set manager_id(int value);
  @override
  User? get users;
  set users(User? value);

  /// Create a copy of UserManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserManagementImplCopyWith<_$UserManagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
