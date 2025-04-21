// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Employment _$EmploymentFromJson(Map<String, dynamic> json) {
  return _Employment.fromJson(json);
}

/// @nodoc
mixin _$Employment {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get max_hours_per_day => throw _privateConstructorUsedError;
  set max_hours_per_day(int value) => throw _privateConstructorUsedError;
  int get max_hours_per_week => throw _privateConstructorUsedError;
  set max_hours_per_week(int value) => throw _privateConstructorUsedError;

  /// Serializes this Employment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmploymentCopyWith<Employment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmploymentCopyWith<$Res> {
  factory $EmploymentCopyWith(
          Employment value, $Res Function(Employment) then) =
      _$EmploymentCopyWithImpl<$Res, Employment>;
  @useResult
  $Res call(
      {int id, String name, int max_hours_per_day, int max_hours_per_week});
}

/// @nodoc
class _$EmploymentCopyWithImpl<$Res, $Val extends Employment>
    implements $EmploymentCopyWith<$Res> {
  _$EmploymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? max_hours_per_day = null,
    Object? max_hours_per_week = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      max_hours_per_day: null == max_hours_per_day
          ? _value.max_hours_per_day
          : max_hours_per_day // ignore: cast_nullable_to_non_nullable
              as int,
      max_hours_per_week: null == max_hours_per_week
          ? _value.max_hours_per_week
          : max_hours_per_week // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmploymentImplCopyWith<$Res>
    implements $EmploymentCopyWith<$Res> {
  factory _$$EmploymentImplCopyWith(
          _$EmploymentImpl value, $Res Function(_$EmploymentImpl) then) =
      __$$EmploymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int max_hours_per_day, int max_hours_per_week});
}

/// @nodoc
class __$$EmploymentImplCopyWithImpl<$Res>
    extends _$EmploymentCopyWithImpl<$Res, _$EmploymentImpl>
    implements _$$EmploymentImplCopyWith<$Res> {
  __$$EmploymentImplCopyWithImpl(
      _$EmploymentImpl _value, $Res Function(_$EmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? max_hours_per_day = null,
    Object? max_hours_per_week = null,
  }) {
    return _then(_$EmploymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      max_hours_per_day: null == max_hours_per_day
          ? _value.max_hours_per_day
          : max_hours_per_day // ignore: cast_nullable_to_non_nullable
              as int,
      max_hours_per_week: null == max_hours_per_week
          ? _value.max_hours_per_week
          : max_hours_per_week // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmploymentImpl implements _Employment {
  _$EmploymentImpl(
      {required this.id,
      required this.name,
      required this.max_hours_per_day,
      required this.max_hours_per_week});

  factory _$EmploymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmploymentImplFromJson(json);

  @override
  int id;
  @override
  String name;
  @override
  int max_hours_per_day;
  @override
  int max_hours_per_week;

  @override
  String toString() {
    return 'Employment(id: $id, name: $name, max_hours_per_day: $max_hours_per_day, max_hours_per_week: $max_hours_per_week)';
  }

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmploymentImplCopyWith<_$EmploymentImpl> get copyWith =>
      __$$EmploymentImplCopyWithImpl<_$EmploymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmploymentImplToJson(
      this,
    );
  }
}

abstract class _Employment implements Employment {
  factory _Employment(
      {required int id,
      required String name,
      required int max_hours_per_day,
      required int max_hours_per_week}) = _$EmploymentImpl;

  factory _Employment.fromJson(Map<String, dynamic> json) =
      _$EmploymentImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get name;
  set name(String value);
  @override
  int get max_hours_per_day;
  set max_hours_per_day(int value);
  @override
  int get max_hours_per_week;
  set max_hours_per_week(int value);

  /// Create a copy of Employment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmploymentImplCopyWith<_$EmploymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
