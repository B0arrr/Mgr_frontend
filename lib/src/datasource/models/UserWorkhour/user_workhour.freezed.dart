// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_workhour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserWorkHour _$UserWorkHourFromJson(Map<String, dynamic> json) {
  return _UserWorkHour.fromJson(json);
}

/// @nodoc
mixin _$UserWorkHour {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  set user_id(int value) => throw _privateConstructorUsedError;
  DateTime get day => throw _privateConstructorUsedError;
  set day(DateTime value) => throw _privateConstructorUsedError;
  DateTime get start_time => throw _privateConstructorUsedError;
  set start_time(DateTime value) => throw _privateConstructorUsedError;
  DateTime? get end_time => throw _privateConstructorUsedError;
  set end_time(DateTime? value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;

  /// Serializes this UserWorkHour to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWorkHour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWorkHourCopyWith<UserWorkHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWorkHourCopyWith<$Res> {
  factory $UserWorkHourCopyWith(
          UserWorkHour value, $Res Function(UserWorkHour) then) =
      _$UserWorkHourCopyWithImpl<$Res, UserWorkHour>;
  @useResult
  $Res call(
      {int id,
      int user_id,
      DateTime day,
      DateTime start_time,
      DateTime? end_time,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserWorkHourCopyWithImpl<$Res, $Val extends UserWorkHour>
    implements $UserWorkHourCopyWith<$Res> {
  _$UserWorkHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWorkHour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? day = null,
    Object? start_time = null,
    Object? end_time = freezed,
    Object? user = freezed,
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
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      start_time: null == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of UserWorkHour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserWorkHourImplCopyWith<$Res>
    implements $UserWorkHourCopyWith<$Res> {
  factory _$$UserWorkHourImplCopyWith(
          _$UserWorkHourImpl value, $Res Function(_$UserWorkHourImpl) then) =
      __$$UserWorkHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int user_id,
      DateTime day,
      DateTime start_time,
      DateTime? end_time,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserWorkHourImplCopyWithImpl<$Res>
    extends _$UserWorkHourCopyWithImpl<$Res, _$UserWorkHourImpl>
    implements _$$UserWorkHourImplCopyWith<$Res> {
  __$$UserWorkHourImplCopyWithImpl(
      _$UserWorkHourImpl _value, $Res Function(_$UserWorkHourImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserWorkHour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? day = null,
    Object? start_time = null,
    Object? end_time = freezed,
    Object? user = freezed,
  }) {
    return _then(_$UserWorkHourImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      start_time: null == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserWorkHourImpl implements _UserWorkHour {
  _$UserWorkHourImpl(
      {required this.id,
      required this.user_id,
      required this.day,
      required this.start_time,
      this.end_time,
      this.user});

  factory _$UserWorkHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWorkHourImplFromJson(json);

  @override
  int id;
  @override
  int user_id;
  @override
  DateTime day;
  @override
  DateTime start_time;
  @override
  DateTime? end_time;
  @override
  User? user;

  @override
  String toString() {
    return 'UserWorkHour(id: $id, user_id: $user_id, day: $day, start_time: $start_time, end_time: $end_time, user: $user)';
  }

  /// Create a copy of UserWorkHour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWorkHourImplCopyWith<_$UserWorkHourImpl> get copyWith =>
      __$$UserWorkHourImplCopyWithImpl<_$UserWorkHourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWorkHourImplToJson(
      this,
    );
  }
}

abstract class _UserWorkHour implements UserWorkHour {
  factory _UserWorkHour(
      {required int id,
      required int user_id,
      required DateTime day,
      required DateTime start_time,
      DateTime? end_time,
      User? user}) = _$UserWorkHourImpl;

  factory _UserWorkHour.fromJson(Map<String, dynamic> json) =
      _$UserWorkHourImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  int get user_id;
  set user_id(int value);
  @override
  DateTime get day;
  set day(DateTime value);
  @override
  DateTime get start_time;
  set start_time(DateTime value);
  @override
  DateTime? get end_time;
  set end_time(DateTime? value);
  @override
  User? get user;
  set user(User? value);

  /// Create a copy of UserWorkHour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWorkHourImplCopyWith<_$UserWorkHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
