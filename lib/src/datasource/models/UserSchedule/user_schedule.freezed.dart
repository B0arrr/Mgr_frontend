// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSchedule _$UserScheduleFromJson(Map<String, dynamic> json) {
  return _UserSchedule.fromJson(json);
}

/// @nodoc
mixin _$UserSchedule {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;
  set required(dynamic value) => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  set user_id(int value) => throw _privateConstructorUsedError;
  DateTime get scheduled_start_work => throw _privateConstructorUsedError;
  set scheduled_start_work(DateTime value) =>
      throw _privateConstructorUsedError;
  DateTime get scheduled_end_work => throw _privateConstructorUsedError;
  set scheduled_end_work(DateTime value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;

  /// Serializes this UserSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserScheduleCopyWith<UserSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScheduleCopyWith<$Res> {
  factory $UserScheduleCopyWith(
          UserSchedule value, $Res Function(UserSchedule) then) =
      _$UserScheduleCopyWithImpl<$Res, UserSchedule>;
  @useResult
  $Res call(
      {int id,
      dynamic required,
      int user_id,
      DateTime scheduled_start_work,
      DateTime scheduled_end_work,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserScheduleCopyWithImpl<$Res, $Val extends UserSchedule>
    implements $UserScheduleCopyWith<$Res> {
  _$UserScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? required = freezed,
    Object? user_id = null,
    Object? scheduled_start_work = null,
    Object? scheduled_end_work = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      scheduled_start_work: null == scheduled_start_work
          ? _value.scheduled_start_work
          : scheduled_start_work // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduled_end_work: null == scheduled_end_work
          ? _value.scheduled_end_work
          : scheduled_end_work // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of UserSchedule
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
abstract class _$$UserScheduleImplCopyWith<$Res>
    implements $UserScheduleCopyWith<$Res> {
  factory _$$UserScheduleImplCopyWith(
          _$UserScheduleImpl value, $Res Function(_$UserScheduleImpl) then) =
      __$$UserScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      dynamic required,
      int user_id,
      DateTime scheduled_start_work,
      DateTime scheduled_end_work,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserScheduleImplCopyWithImpl<$Res>
    extends _$UserScheduleCopyWithImpl<$Res, _$UserScheduleImpl>
    implements _$$UserScheduleImplCopyWith<$Res> {
  __$$UserScheduleImplCopyWithImpl(
      _$UserScheduleImpl _value, $Res Function(_$UserScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? required = freezed,
    Object? user_id = null,
    Object? scheduled_start_work = null,
    Object? scheduled_end_work = null,
    Object? user = freezed,
  }) {
    return _then(_$UserScheduleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      required: freezed == required ? _value.required! : required,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      scheduled_start_work: null == scheduled_start_work
          ? _value.scheduled_start_work
          : scheduled_start_work // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduled_end_work: null == scheduled_end_work
          ? _value.scheduled_end_work
          : scheduled_end_work // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserScheduleImpl implements _UserSchedule {
  _$UserScheduleImpl(
      {required this.id,
      this.required,
      required this.user_id,
      required this.scheduled_start_work,
      required this.scheduled_end_work,
      this.user});

  factory _$UserScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserScheduleImplFromJson(json);

  @override
  int id;
  @override
  dynamic required;
  @override
  int user_id;
  @override
  DateTime scheduled_start_work;
  @override
  DateTime scheduled_end_work;
  @override
  User? user;

  @override
  String toString() {
    return 'UserSchedule(id: $id, required: $required, user_id: $user_id, scheduled_start_work: $scheduled_start_work, scheduled_end_work: $scheduled_end_work, user: $user)';
  }

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserScheduleImplCopyWith<_$UserScheduleImpl> get copyWith =>
      __$$UserScheduleImplCopyWithImpl<_$UserScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserScheduleImplToJson(
      this,
    );
  }
}

abstract class _UserSchedule implements UserSchedule {
  factory _UserSchedule(
      {required int id,
      dynamic required,
      required int user_id,
      required DateTime scheduled_start_work,
      required DateTime scheduled_end_work,
      User? user}) = _$UserScheduleImpl;

  factory _UserSchedule.fromJson(Map<String, dynamic> json) =
      _$UserScheduleImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  dynamic get required;
  set required(dynamic value);
  @override
  int get user_id;
  set user_id(int value);
  @override
  DateTime get scheduled_start_work;
  set scheduled_start_work(DateTime value);
  @override
  DateTime get scheduled_end_work;
  set scheduled_end_work(DateTime value);
  @override
  User? get user;
  set user(User? value);

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserScheduleImplCopyWith<_$UserScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
