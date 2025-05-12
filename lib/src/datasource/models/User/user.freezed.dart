// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  set first_name(String value) => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  set last_name(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;
  bool get is_active => throw _privateConstructorUsedError;
  set is_active(bool value) => throw _privateConstructorUsedError;
  bool get has_flexible_working_hours => throw _privateConstructorUsedError;
  set has_flexible_working_hours(bool value) =>
      throw _privateConstructorUsedError;
  List<Role>? get roles => throw _privateConstructorUsedError;
  set roles(List<Role>? value) => throw _privateConstructorUsedError;
  List<UserEmployment>? get user_employments =>
      throw _privateConstructorUsedError;
  set user_employments(List<UserEmployment>? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String email,
      String password,
      bool is_active,
      bool has_flexible_working_hours,
      List<Role>? roles,
      List<UserEmployment>? user_employments});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? email = null,
    Object? password = null,
    Object? is_active = null,
    Object? has_flexible_working_hours = null,
    Object? roles = freezed,
    Object? user_employments = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool,
      has_flexible_working_hours: null == has_flexible_working_hours
          ? _value.has_flexible_working_hours
          : has_flexible_working_hours // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
      user_employments: freezed == user_employments
          ? _value.user_employments
          : user_employments // ignore: cast_nullable_to_non_nullable
              as List<UserEmployment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String email,
      String password,
      bool is_active,
      bool has_flexible_working_hours,
      List<Role>? roles,
      List<UserEmployment>? user_employments});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? email = null,
    Object? password = null,
    Object? is_active = null,
    Object? has_flexible_working_hours = null,
    Object? roles = freezed,
    Object? user_employments = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool,
      has_flexible_working_hours: null == has_flexible_working_hours
          ? _value.has_flexible_working_hours
          : has_flexible_working_hours // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
      user_employments: freezed == user_employments
          ? _value.user_employments
          : user_employments // ignore: cast_nullable_to_non_nullable
              as List<UserEmployment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.email,
      required this.password,
      required this.is_active,
      required this.has_flexible_working_hours,
      this.roles,
      this.user_employments});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  int id;
  @override
  String first_name;
  @override
  String last_name;
  @override
  String email;
  @override
  String password;
  @override
  bool is_active;
  @override
  bool has_flexible_working_hours;
  @override
  List<Role>? roles;
  @override
  List<UserEmployment>? user_employments;

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, last_name: $last_name, email: $email, password: $password, is_active: $is_active, has_flexible_working_hours: $has_flexible_working_hours, roles: $roles, user_employments: $user_employments)';
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required int id,
      required String first_name,
      required String last_name,
      required String email,
      required String password,
      required bool is_active,
      required bool has_flexible_working_hours,
      List<Role>? roles,
      List<UserEmployment>? user_employments}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get first_name;
  set first_name(String value);
  @override
  String get last_name;
  set last_name(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get password;
  set password(String value);
  @override
  bool get is_active;
  set is_active(bool value);
  @override
  bool get has_flexible_working_hours;
  set has_flexible_working_hours(bool value);
  @override
  List<Role>? get roles;
  set roles(List<Role>? value);
  @override
  List<UserEmployment>? get user_employments;
  set user_employments(List<UserEmployment>? value);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
