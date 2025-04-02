// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCompanies,
    required TResult Function(Department department) addCompany,
    required TResult Function(Department department) removeDepartment,
    required TResult Function(
            Department oldDepartment, Department newDepartment)
        updateDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initCompanies,
    TResult? Function(Department department)? addCompany,
    TResult? Function(Department department)? removeDepartment,
    TResult? Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCompanies,
    TResult Function(Department department)? addCompany,
    TResult Function(Department department)? removeDepartment,
    TResult Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitDepartments value) initCompanies,
    required TResult Function(_AddDepartment value) addCompany,
    required TResult Function(_RemoveDepartment value) removeDepartment,
    required TResult Function(_UpdateDepartment value) updateDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitDepartments value)? initCompanies,
    TResult? Function(_AddDepartment value)? addCompany,
    TResult? Function(_RemoveDepartment value)? removeDepartment,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitDepartments value)? initCompanies,
    TResult Function(_AddDepartment value)? addCompany,
    TResult Function(_RemoveDepartment value)? removeDepartment,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentManagementEventCopyWith<$Res> {
  factory $DepartmentManagementEventCopyWith(DepartmentManagementEvent value,
          $Res Function(DepartmentManagementEvent) then) =
      _$DepartmentManagementEventCopyWithImpl<$Res, DepartmentManagementEvent>;
}

/// @nodoc
class _$DepartmentManagementEventCopyWithImpl<$Res,
        $Val extends DepartmentManagementEvent>
    implements $DepartmentManagementEventCopyWith<$Res> {
  _$DepartmentManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitDepartmentsImplCopyWith<$Res> {
  factory _$$InitDepartmentsImplCopyWith(_$InitDepartmentsImpl value,
          $Res Function(_$InitDepartmentsImpl) then) =
      __$$InitDepartmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitDepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentManagementEventCopyWithImpl<$Res, _$InitDepartmentsImpl>
    implements _$$InitDepartmentsImplCopyWith<$Res> {
  __$$InitDepartmentsImplCopyWithImpl(
      _$InitDepartmentsImpl _value, $Res Function(_$InitDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitDepartmentsImpl implements _InitDepartments {
  const _$InitDepartmentsImpl();

  @override
  String toString() {
    return 'DepartmentManagementEvent.initCompanies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitDepartmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCompanies,
    required TResult Function(Department department) addCompany,
    required TResult Function(Department department) removeDepartment,
    required TResult Function(
            Department oldDepartment, Department newDepartment)
        updateDepartment,
  }) {
    return initCompanies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initCompanies,
    TResult? Function(Department department)? addCompany,
    TResult? Function(Department department)? removeDepartment,
    TResult? Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
  }) {
    return initCompanies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCompanies,
    TResult Function(Department department)? addCompany,
    TResult Function(Department department)? removeDepartment,
    TResult Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
    required TResult orElse(),
  }) {
    if (initCompanies != null) {
      return initCompanies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitDepartments value) initCompanies,
    required TResult Function(_AddDepartment value) addCompany,
    required TResult Function(_RemoveDepartment value) removeDepartment,
    required TResult Function(_UpdateDepartment value) updateDepartment,
  }) {
    return initCompanies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitDepartments value)? initCompanies,
    TResult? Function(_AddDepartment value)? addCompany,
    TResult? Function(_RemoveDepartment value)? removeDepartment,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
  }) {
    return initCompanies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitDepartments value)? initCompanies,
    TResult Function(_AddDepartment value)? addCompany,
    TResult Function(_RemoveDepartment value)? removeDepartment,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) {
    if (initCompanies != null) {
      return initCompanies(this);
    }
    return orElse();
  }
}

abstract class _InitDepartments implements DepartmentManagementEvent {
  const factory _InitDepartments() = _$InitDepartmentsImpl;
}

/// @nodoc
abstract class _$$AddDepartmentImplCopyWith<$Res> {
  factory _$$AddDepartmentImplCopyWith(
          _$AddDepartmentImpl value, $Res Function(_$AddDepartmentImpl) then) =
      __$$AddDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Department department});

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$AddDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentManagementEventCopyWithImpl<$Res, _$AddDepartmentImpl>
    implements _$$AddDepartmentImplCopyWith<$Res> {
  __$$AddDepartmentImplCopyWithImpl(
      _$AddDepartmentImpl _value, $Res Function(_$AddDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_$AddDepartmentImpl(
      null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department,
    ));
  }

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc

class _$AddDepartmentImpl implements _AddDepartment {
  const _$AddDepartmentImpl(this.department);

  @override
  final Department department;

  @override
  String toString() {
    return 'DepartmentManagementEvent.addCompany(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDepartmentImplCopyWith<_$AddDepartmentImpl> get copyWith =>
      __$$AddDepartmentImplCopyWithImpl<_$AddDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCompanies,
    required TResult Function(Department department) addCompany,
    required TResult Function(Department department) removeDepartment,
    required TResult Function(
            Department oldDepartment, Department newDepartment)
        updateDepartment,
  }) {
    return addCompany(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initCompanies,
    TResult? Function(Department department)? addCompany,
    TResult? Function(Department department)? removeDepartment,
    TResult? Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
  }) {
    return addCompany?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCompanies,
    TResult Function(Department department)? addCompany,
    TResult Function(Department department)? removeDepartment,
    TResult Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
    required TResult orElse(),
  }) {
    if (addCompany != null) {
      return addCompany(department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitDepartments value) initCompanies,
    required TResult Function(_AddDepartment value) addCompany,
    required TResult Function(_RemoveDepartment value) removeDepartment,
    required TResult Function(_UpdateDepartment value) updateDepartment,
  }) {
    return addCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitDepartments value)? initCompanies,
    TResult? Function(_AddDepartment value)? addCompany,
    TResult? Function(_RemoveDepartment value)? removeDepartment,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
  }) {
    return addCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitDepartments value)? initCompanies,
    TResult Function(_AddDepartment value)? addCompany,
    TResult Function(_RemoveDepartment value)? removeDepartment,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) {
    if (addCompany != null) {
      return addCompany(this);
    }
    return orElse();
  }
}

abstract class _AddDepartment implements DepartmentManagementEvent {
  const factory _AddDepartment(final Department department) =
      _$AddDepartmentImpl;

  Department get department;

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDepartmentImplCopyWith<_$AddDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDepartmentImplCopyWith<$Res> {
  factory _$$RemoveDepartmentImplCopyWith(_$RemoveDepartmentImpl value,
          $Res Function(_$RemoveDepartmentImpl) then) =
      __$$RemoveDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Department department});

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$RemoveDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentManagementEventCopyWithImpl<$Res,
        _$RemoveDepartmentImpl>
    implements _$$RemoveDepartmentImplCopyWith<$Res> {
  __$$RemoveDepartmentImplCopyWithImpl(_$RemoveDepartmentImpl _value,
      $Res Function(_$RemoveDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_$RemoveDepartmentImpl(
      null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department,
    ));
  }

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc

class _$RemoveDepartmentImpl implements _RemoveDepartment {
  const _$RemoveDepartmentImpl(this.department);

  @override
  final Department department;

  @override
  String toString() {
    return 'DepartmentManagementEvent.removeDepartment(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDepartmentImplCopyWith<_$RemoveDepartmentImpl> get copyWith =>
      __$$RemoveDepartmentImplCopyWithImpl<_$RemoveDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCompanies,
    required TResult Function(Department department) addCompany,
    required TResult Function(Department department) removeDepartment,
    required TResult Function(
            Department oldDepartment, Department newDepartment)
        updateDepartment,
  }) {
    return removeDepartment(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initCompanies,
    TResult? Function(Department department)? addCompany,
    TResult? Function(Department department)? removeDepartment,
    TResult? Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
  }) {
    return removeDepartment?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCompanies,
    TResult Function(Department department)? addCompany,
    TResult Function(Department department)? removeDepartment,
    TResult Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
    required TResult orElse(),
  }) {
    if (removeDepartment != null) {
      return removeDepartment(department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitDepartments value) initCompanies,
    required TResult Function(_AddDepartment value) addCompany,
    required TResult Function(_RemoveDepartment value) removeDepartment,
    required TResult Function(_UpdateDepartment value) updateDepartment,
  }) {
    return removeDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitDepartments value)? initCompanies,
    TResult? Function(_AddDepartment value)? addCompany,
    TResult? Function(_RemoveDepartment value)? removeDepartment,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
  }) {
    return removeDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitDepartments value)? initCompanies,
    TResult Function(_AddDepartment value)? addCompany,
    TResult Function(_RemoveDepartment value)? removeDepartment,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) {
    if (removeDepartment != null) {
      return removeDepartment(this);
    }
    return orElse();
  }
}

abstract class _RemoveDepartment implements DepartmentManagementEvent {
  const factory _RemoveDepartment(final Department department) =
      _$RemoveDepartmentImpl;

  Department get department;

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveDepartmentImplCopyWith<_$RemoveDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDepartmentImplCopyWith<$Res> {
  factory _$$UpdateDepartmentImplCopyWith(_$UpdateDepartmentImpl value,
          $Res Function(_$UpdateDepartmentImpl) then) =
      __$$UpdateDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Department oldDepartment, Department newDepartment});

  $DepartmentCopyWith<$Res> get oldDepartment;
  $DepartmentCopyWith<$Res> get newDepartment;
}

/// @nodoc
class __$$UpdateDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentManagementEventCopyWithImpl<$Res,
        _$UpdateDepartmentImpl>
    implements _$$UpdateDepartmentImplCopyWith<$Res> {
  __$$UpdateDepartmentImplCopyWithImpl(_$UpdateDepartmentImpl _value,
      $Res Function(_$UpdateDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldDepartment = null,
    Object? newDepartment = null,
  }) {
    return _then(_$UpdateDepartmentImpl(
      oldDepartment: null == oldDepartment
          ? _value.oldDepartment
          : oldDepartment // ignore: cast_nullable_to_non_nullable
              as Department,
      newDepartment: null == newDepartment
          ? _value.newDepartment
          : newDepartment // ignore: cast_nullable_to_non_nullable
              as Department,
    ));
  }

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get oldDepartment {
    return $DepartmentCopyWith<$Res>(_value.oldDepartment, (value) {
      return _then(_value.copyWith(oldDepartment: value));
    });
  }

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get newDepartment {
    return $DepartmentCopyWith<$Res>(_value.newDepartment, (value) {
      return _then(_value.copyWith(newDepartment: value));
    });
  }
}

/// @nodoc

class _$UpdateDepartmentImpl implements _UpdateDepartment {
  const _$UpdateDepartmentImpl(
      {required this.oldDepartment, required this.newDepartment});

  @override
  final Department oldDepartment;
  @override
  final Department newDepartment;

  @override
  String toString() {
    return 'DepartmentManagementEvent.updateDepartment(oldDepartment: $oldDepartment, newDepartment: $newDepartment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDepartmentImpl &&
            (identical(other.oldDepartment, oldDepartment) ||
                other.oldDepartment == oldDepartment) &&
            (identical(other.newDepartment, newDepartment) ||
                other.newDepartment == newDepartment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldDepartment, newDepartment);

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDepartmentImplCopyWith<_$UpdateDepartmentImpl> get copyWith =>
      __$$UpdateDepartmentImplCopyWithImpl<_$UpdateDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCompanies,
    required TResult Function(Department department) addCompany,
    required TResult Function(Department department) removeDepartment,
    required TResult Function(
            Department oldDepartment, Department newDepartment)
        updateDepartment,
  }) {
    return updateDepartment(oldDepartment, newDepartment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initCompanies,
    TResult? Function(Department department)? addCompany,
    TResult? Function(Department department)? removeDepartment,
    TResult? Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
  }) {
    return updateDepartment?.call(oldDepartment, newDepartment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCompanies,
    TResult Function(Department department)? addCompany,
    TResult Function(Department department)? removeDepartment,
    TResult Function(Department oldDepartment, Department newDepartment)?
        updateDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(oldDepartment, newDepartment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitDepartments value) initCompanies,
    required TResult Function(_AddDepartment value) addCompany,
    required TResult Function(_RemoveDepartment value) removeDepartment,
    required TResult Function(_UpdateDepartment value) updateDepartment,
  }) {
    return updateDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitDepartments value)? initCompanies,
    TResult? Function(_AddDepartment value)? addCompany,
    TResult? Function(_RemoveDepartment value)? removeDepartment,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
  }) {
    return updateDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitDepartments value)? initCompanies,
    TResult Function(_AddDepartment value)? addCompany,
    TResult Function(_RemoveDepartment value)? removeDepartment,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(this);
    }
    return orElse();
  }
}

abstract class _UpdateDepartment implements DepartmentManagementEvent {
  const factory _UpdateDepartment(
      {required final Department oldDepartment,
      required final Department newDepartment}) = _$UpdateDepartmentImpl;

  Department get oldDepartment;
  Department get newDepartment;

  /// Create a copy of DepartmentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDepartmentImplCopyWith<_$UpdateDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepartmentManagementState {
  List<Department> get departments => throw _privateConstructorUsedError;

  /// Create a copy of DepartmentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentManagementStateCopyWith<DepartmentManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentManagementStateCopyWith<$Res> {
  factory $DepartmentManagementStateCopyWith(DepartmentManagementState value,
          $Res Function(DepartmentManagementState) then) =
      _$DepartmentManagementStateCopyWithImpl<$Res, DepartmentManagementState>;
  @useResult
  $Res call({List<Department> departments});
}

/// @nodoc
class _$DepartmentManagementStateCopyWithImpl<$Res,
        $Val extends DepartmentManagementState>
    implements $DepartmentManagementStateCopyWith<$Res> {
  _$DepartmentManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_value.copyWith(
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentManagementStateImplCopyWith<$Res>
    implements $DepartmentManagementStateCopyWith<$Res> {
  factory _$$DepartmentManagementStateImplCopyWith(
          _$DepartmentManagementStateImpl value,
          $Res Function(_$DepartmentManagementStateImpl) then) =
      __$$DepartmentManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Department> departments});
}

/// @nodoc
class __$$DepartmentManagementStateImplCopyWithImpl<$Res>
    extends _$DepartmentManagementStateCopyWithImpl<$Res,
        _$DepartmentManagementStateImpl>
    implements _$$DepartmentManagementStateImplCopyWith<$Res> {
  __$$DepartmentManagementStateImplCopyWithImpl(
      _$DepartmentManagementStateImpl _value,
      $Res Function(_$DepartmentManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_$DepartmentManagementStateImpl(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ));
  }
}

/// @nodoc

class _$DepartmentManagementStateImpl implements _DepartmentManagementState {
  const _$DepartmentManagementStateImpl(
      {required final List<Department> departments})
      : _departments = departments;

  final List<Department> _departments;
  @override
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'DepartmentManagementState(departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentManagementStateImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_departments));

  /// Create a copy of DepartmentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentManagementStateImplCopyWith<_$DepartmentManagementStateImpl>
      get copyWith => __$$DepartmentManagementStateImplCopyWithImpl<
          _$DepartmentManagementStateImpl>(this, _$identity);
}

abstract class _DepartmentManagementState implements DepartmentManagementState {
  const factory _DepartmentManagementState(
          {required final List<Department> departments}) =
      _$DepartmentManagementStateImpl;

  @override
  List<Department> get departments;

  /// Create a copy of DepartmentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentManagementStateImplCopyWith<_$DepartmentManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
