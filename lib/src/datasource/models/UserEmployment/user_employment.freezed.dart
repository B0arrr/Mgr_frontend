// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_employment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserEmployment _$UserEmploymentFromJson(Map<String, dynamic> json) {
  return _UserEmployment.fromJson(json);
}

/// @nodoc
mixin _$UserEmployment {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  set user_id(int value) => throw _privateConstructorUsedError;
  int get employment_id => throw _privateConstructorUsedError;
  set employment_id(int value) => throw _privateConstructorUsedError;
  int get company_id => throw _privateConstructorUsedError;
  set company_id(int value) => throw _privateConstructorUsedError;
  int get department_id => throw _privateConstructorUsedError;
  set department_id(int value) => throw _privateConstructorUsedError;
  int get position_id => throw _privateConstructorUsedError;
  set position_id(int value) => throw _privateConstructorUsedError;
  Employment? get employments => throw _privateConstructorUsedError;
  set employments(Employment? value) => throw _privateConstructorUsedError;
  Company? get companies => throw _privateConstructorUsedError;
  set companies(Company? value) => throw _privateConstructorUsedError;
  Department? get departments => throw _privateConstructorUsedError;
  set departments(Department? value) => throw _privateConstructorUsedError;
  Position? get positions => throw _privateConstructorUsedError;
  set positions(Position? value) => throw _privateConstructorUsedError;
  DateTime get start_date => throw _privateConstructorUsedError;
  set start_date(DateTime value) => throw _privateConstructorUsedError;
  DateTime? get end_date => throw _privateConstructorUsedError;
  set end_date(DateTime? value) => throw _privateConstructorUsedError;

  /// Serializes this UserEmployment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserEmploymentCopyWith<UserEmployment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEmploymentCopyWith<$Res> {
  factory $UserEmploymentCopyWith(
          UserEmployment value, $Res Function(UserEmployment) then) =
      _$UserEmploymentCopyWithImpl<$Res, UserEmployment>;
  @useResult
  $Res call(
      {int id,
      int user_id,
      int employment_id,
      int company_id,
      int department_id,
      int position_id,
      Employment? employments,
      Company? companies,
      Department? departments,
      Position? positions,
      DateTime start_date,
      DateTime? end_date});

  $EmploymentCopyWith<$Res>? get employments;
  $CompanyCopyWith<$Res>? get companies;
  $DepartmentCopyWith<$Res>? get departments;
  $PositionCopyWith<$Res>? get positions;
}

/// @nodoc
class _$UserEmploymentCopyWithImpl<$Res, $Val extends UserEmployment>
    implements $UserEmploymentCopyWith<$Res> {
  _$UserEmploymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? employment_id = null,
    Object? company_id = null,
    Object? department_id = null,
    Object? position_id = null,
    Object? employments = freezed,
    Object? companies = freezed,
    Object? departments = freezed,
    Object? positions = freezed,
    Object? start_date = null,
    Object? end_date = freezed,
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
      employment_id: null == employment_id
          ? _value.employment_id
          : employment_id // ignore: cast_nullable_to_non_nullable
              as int,
      company_id: null == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int,
      department_id: null == department_id
          ? _value.department_id
          : department_id // ignore: cast_nullable_to_non_nullable
              as int,
      position_id: null == position_id
          ? _value.position_id
          : position_id // ignore: cast_nullable_to_non_nullable
              as int,
      employments: freezed == employments
          ? _value.employments
          : employments // ignore: cast_nullable_to_non_nullable
              as Employment?,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as Company?,
      departments: freezed == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as Department?,
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as Position?,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmploymentCopyWith<$Res>? get employments {
    if (_value.employments == null) {
      return null;
    }

    return $EmploymentCopyWith<$Res>(_value.employments!, (value) {
      return _then(_value.copyWith(employments: value) as $Val);
    });
  }

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get companies {
    if (_value.companies == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.companies!, (value) {
      return _then(_value.copyWith(companies: value) as $Val);
    });
  }

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get departments {
    if (_value.departments == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_value.departments!, (value) {
      return _then(_value.copyWith(departments: value) as $Val);
    });
  }

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get positions {
    if (_value.positions == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.positions!, (value) {
      return _then(_value.copyWith(positions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserEmploymentImplCopyWith<$Res>
    implements $UserEmploymentCopyWith<$Res> {
  factory _$$UserEmploymentImplCopyWith(_$UserEmploymentImpl value,
          $Res Function(_$UserEmploymentImpl) then) =
      __$$UserEmploymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int user_id,
      int employment_id,
      int company_id,
      int department_id,
      int position_id,
      Employment? employments,
      Company? companies,
      Department? departments,
      Position? positions,
      DateTime start_date,
      DateTime? end_date});

  @override
  $EmploymentCopyWith<$Res>? get employments;
  @override
  $CompanyCopyWith<$Res>? get companies;
  @override
  $DepartmentCopyWith<$Res>? get departments;
  @override
  $PositionCopyWith<$Res>? get positions;
}

/// @nodoc
class __$$UserEmploymentImplCopyWithImpl<$Res>
    extends _$UserEmploymentCopyWithImpl<$Res, _$UserEmploymentImpl>
    implements _$$UserEmploymentImplCopyWith<$Res> {
  __$$UserEmploymentImplCopyWithImpl(
      _$UserEmploymentImpl _value, $Res Function(_$UserEmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? employment_id = null,
    Object? company_id = null,
    Object? department_id = null,
    Object? position_id = null,
    Object? employments = freezed,
    Object? companies = freezed,
    Object? departments = freezed,
    Object? positions = freezed,
    Object? start_date = null,
    Object? end_date = freezed,
  }) {
    return _then(_$UserEmploymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      employment_id: null == employment_id
          ? _value.employment_id
          : employment_id // ignore: cast_nullable_to_non_nullable
              as int,
      company_id: null == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int,
      department_id: null == department_id
          ? _value.department_id
          : department_id // ignore: cast_nullable_to_non_nullable
              as int,
      position_id: null == position_id
          ? _value.position_id
          : position_id // ignore: cast_nullable_to_non_nullable
              as int,
      employments: freezed == employments
          ? _value.employments
          : employments // ignore: cast_nullable_to_non_nullable
              as Employment?,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as Company?,
      departments: freezed == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as Department?,
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as Position?,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEmploymentImpl implements _UserEmployment {
  _$UserEmploymentImpl(
      {required this.id,
      required this.user_id,
      required this.employment_id,
      required this.company_id,
      required this.department_id,
      required this.position_id,
      this.employments,
      this.companies,
      this.departments,
      this.positions,
      required this.start_date,
      this.end_date});

  factory _$UserEmploymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEmploymentImplFromJson(json);

  @override
  int id;
  @override
  int user_id;
  @override
  int employment_id;
  @override
  int company_id;
  @override
  int department_id;
  @override
  int position_id;
  @override
  Employment? employments;
  @override
  Company? companies;
  @override
  Department? departments;
  @override
  Position? positions;
  @override
  DateTime start_date;
  @override
  DateTime? end_date;

  @override
  String toString() {
    return 'UserEmployment(id: $id, user_id: $user_id, employment_id: $employment_id, company_id: $company_id, department_id: $department_id, position_id: $position_id, employments: $employments, companies: $companies, departments: $departments, positions: $positions, start_date: $start_date, end_date: $end_date)';
  }

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEmploymentImplCopyWith<_$UserEmploymentImpl> get copyWith =>
      __$$UserEmploymentImplCopyWithImpl<_$UserEmploymentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEmploymentImplToJson(
      this,
    );
  }
}

abstract class _UserEmployment implements UserEmployment {
  factory _UserEmployment(
      {required int id,
      required int user_id,
      required int employment_id,
      required int company_id,
      required int department_id,
      required int position_id,
      Employment? employments,
      Company? companies,
      Department? departments,
      Position? positions,
      required DateTime start_date,
      DateTime? end_date}) = _$UserEmploymentImpl;

  factory _UserEmployment.fromJson(Map<String, dynamic> json) =
      _$UserEmploymentImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  int get user_id;
  set user_id(int value);
  @override
  int get employment_id;
  set employment_id(int value);
  @override
  int get company_id;
  set company_id(int value);
  @override
  int get department_id;
  set department_id(int value);
  @override
  int get position_id;
  set position_id(int value);
  @override
  Employment? get employments;
  set employments(Employment? value);
  @override
  Company? get companies;
  set companies(Company? value);
  @override
  Department? get departments;
  set departments(Department? value);
  @override
  Position? get positions;
  set positions(Position? value);
  @override
  DateTime get start_date;
  set start_date(DateTime value);
  @override
  DateTime? get end_date;
  set end_date(DateTime? value);

  /// Create a copy of UserEmployment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEmploymentImplCopyWith<_$UserEmploymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
