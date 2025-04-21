// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_employment_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEmploymentManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserEmployment,
    required TResult Function(UserEmployment userEmployment) addUserEmployment,
    required TResult Function(UserEmployment userEmployment)
        removeUserEmployment,
    required TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)
        updateUserEmployment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserEmployment,
    TResult? Function(UserEmployment userEmployment)? addUserEmployment,
    TResult? Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult? Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserEmployment,
    TResult Function(UserEmployment userEmployment)? addUserEmployment,
    TResult Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserEmployment value) initUserEmployment,
    required TResult Function(_AddUserEmployment value) addUserEmployment,
    required TResult Function(_RemoveUserEmployment value) removeUserEmployment,
    required TResult Function(_UpdateUserEmployment value) updateUserEmployment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserEmployment value)? initUserEmployment,
    TResult? Function(_AddUserEmployment value)? addUserEmployment,
    TResult? Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult? Function(_UpdateUserEmployment value)? updateUserEmployment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserEmployment value)? initUserEmployment,
    TResult Function(_AddUserEmployment value)? addUserEmployment,
    TResult Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult Function(_UpdateUserEmployment value)? updateUserEmployment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEmploymentManagementEventCopyWith<$Res> {
  factory $UserEmploymentManagementEventCopyWith(
          UserEmploymentManagementEvent value,
          $Res Function(UserEmploymentManagementEvent) then) =
      _$UserEmploymentManagementEventCopyWithImpl<$Res,
          UserEmploymentManagementEvent>;
}

/// @nodoc
class _$UserEmploymentManagementEventCopyWithImpl<$Res,
        $Val extends UserEmploymentManagementEvent>
    implements $UserEmploymentManagementEventCopyWith<$Res> {
  _$UserEmploymentManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitUserEmploymentImplCopyWith<$Res> {
  factory _$$InitUserEmploymentImplCopyWith(_$InitUserEmploymentImpl value,
          $Res Function(_$InitUserEmploymentImpl) then) =
      __$$InitUserEmploymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$InitUserEmploymentImplCopyWithImpl<$Res>
    extends _$UserEmploymentManagementEventCopyWithImpl<$Res,
        _$InitUserEmploymentImpl>
    implements _$$InitUserEmploymentImplCopyWith<$Res> {
  __$$InitUserEmploymentImplCopyWithImpl(_$InitUserEmploymentImpl _value,
      $Res Function(_$InitUserEmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$InitUserEmploymentImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitUserEmploymentImpl implements _InitUserEmployment {
  const _$InitUserEmploymentImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEmploymentManagementEvent.initUserEmployment(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitUserEmploymentImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitUserEmploymentImplCopyWith<_$InitUserEmploymentImpl> get copyWith =>
      __$$InitUserEmploymentImplCopyWithImpl<_$InitUserEmploymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserEmployment,
    required TResult Function(UserEmployment userEmployment) addUserEmployment,
    required TResult Function(UserEmployment userEmployment)
        removeUserEmployment,
    required TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)
        updateUserEmployment,
  }) {
    return initUserEmployment(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserEmployment,
    TResult? Function(UserEmployment userEmployment)? addUserEmployment,
    TResult? Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult? Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
  }) {
    return initUserEmployment?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserEmployment,
    TResult Function(UserEmployment userEmployment)? addUserEmployment,
    TResult Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
    required TResult orElse(),
  }) {
    if (initUserEmployment != null) {
      return initUserEmployment(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserEmployment value) initUserEmployment,
    required TResult Function(_AddUserEmployment value) addUserEmployment,
    required TResult Function(_RemoveUserEmployment value) removeUserEmployment,
    required TResult Function(_UpdateUserEmployment value) updateUserEmployment,
  }) {
    return initUserEmployment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserEmployment value)? initUserEmployment,
    TResult? Function(_AddUserEmployment value)? addUserEmployment,
    TResult? Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult? Function(_UpdateUserEmployment value)? updateUserEmployment,
  }) {
    return initUserEmployment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserEmployment value)? initUserEmployment,
    TResult Function(_AddUserEmployment value)? addUserEmployment,
    TResult Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult Function(_UpdateUserEmployment value)? updateUserEmployment,
    required TResult orElse(),
  }) {
    if (initUserEmployment != null) {
      return initUserEmployment(this);
    }
    return orElse();
  }
}

abstract class _InitUserEmployment implements UserEmploymentManagementEvent {
  const factory _InitUserEmployment(final int userId) =
      _$InitUserEmploymentImpl;

  int get userId;

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitUserEmploymentImplCopyWith<_$InitUserEmploymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserEmploymentImplCopyWith<$Res> {
  factory _$$AddUserEmploymentImplCopyWith(_$AddUserEmploymentImpl value,
          $Res Function(_$AddUserEmploymentImpl) then) =
      __$$AddUserEmploymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEmployment userEmployment});

  $UserEmploymentCopyWith<$Res> get userEmployment;
}

/// @nodoc
class __$$AddUserEmploymentImplCopyWithImpl<$Res>
    extends _$UserEmploymentManagementEventCopyWithImpl<$Res,
        _$AddUserEmploymentImpl>
    implements _$$AddUserEmploymentImplCopyWith<$Res> {
  __$$AddUserEmploymentImplCopyWithImpl(_$AddUserEmploymentImpl _value,
      $Res Function(_$AddUserEmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmployment = null,
  }) {
    return _then(_$AddUserEmploymentImpl(
      null == userEmployment
          ? _value.userEmployment
          : userEmployment // ignore: cast_nullable_to_non_nullable
              as UserEmployment,
    ));
  }

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEmploymentCopyWith<$Res> get userEmployment {
    return $UserEmploymentCopyWith<$Res>(_value.userEmployment, (value) {
      return _then(_value.copyWith(userEmployment: value));
    });
  }
}

/// @nodoc

class _$AddUserEmploymentImpl implements _AddUserEmployment {
  const _$AddUserEmploymentImpl(this.userEmployment);

  @override
  final UserEmployment userEmployment;

  @override
  String toString() {
    return 'UserEmploymentManagementEvent.addUserEmployment(userEmployment: $userEmployment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserEmploymentImpl &&
            (identical(other.userEmployment, userEmployment) ||
                other.userEmployment == userEmployment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEmployment);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserEmploymentImplCopyWith<_$AddUserEmploymentImpl> get copyWith =>
      __$$AddUserEmploymentImplCopyWithImpl<_$AddUserEmploymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserEmployment,
    required TResult Function(UserEmployment userEmployment) addUserEmployment,
    required TResult Function(UserEmployment userEmployment)
        removeUserEmployment,
    required TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)
        updateUserEmployment,
  }) {
    return addUserEmployment(userEmployment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserEmployment,
    TResult? Function(UserEmployment userEmployment)? addUserEmployment,
    TResult? Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult? Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
  }) {
    return addUserEmployment?.call(userEmployment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserEmployment,
    TResult Function(UserEmployment userEmployment)? addUserEmployment,
    TResult Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
    required TResult orElse(),
  }) {
    if (addUserEmployment != null) {
      return addUserEmployment(userEmployment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserEmployment value) initUserEmployment,
    required TResult Function(_AddUserEmployment value) addUserEmployment,
    required TResult Function(_RemoveUserEmployment value) removeUserEmployment,
    required TResult Function(_UpdateUserEmployment value) updateUserEmployment,
  }) {
    return addUserEmployment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserEmployment value)? initUserEmployment,
    TResult? Function(_AddUserEmployment value)? addUserEmployment,
    TResult? Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult? Function(_UpdateUserEmployment value)? updateUserEmployment,
  }) {
    return addUserEmployment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserEmployment value)? initUserEmployment,
    TResult Function(_AddUserEmployment value)? addUserEmployment,
    TResult Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult Function(_UpdateUserEmployment value)? updateUserEmployment,
    required TResult orElse(),
  }) {
    if (addUserEmployment != null) {
      return addUserEmployment(this);
    }
    return orElse();
  }
}

abstract class _AddUserEmployment implements UserEmploymentManagementEvent {
  const factory _AddUserEmployment(final UserEmployment userEmployment) =
      _$AddUserEmploymentImpl;

  UserEmployment get userEmployment;

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserEmploymentImplCopyWith<_$AddUserEmploymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveUserEmploymentImplCopyWith<$Res> {
  factory _$$RemoveUserEmploymentImplCopyWith(_$RemoveUserEmploymentImpl value,
          $Res Function(_$RemoveUserEmploymentImpl) then) =
      __$$RemoveUserEmploymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEmployment userEmployment});

  $UserEmploymentCopyWith<$Res> get userEmployment;
}

/// @nodoc
class __$$RemoveUserEmploymentImplCopyWithImpl<$Res>
    extends _$UserEmploymentManagementEventCopyWithImpl<$Res,
        _$RemoveUserEmploymentImpl>
    implements _$$RemoveUserEmploymentImplCopyWith<$Res> {
  __$$RemoveUserEmploymentImplCopyWithImpl(_$RemoveUserEmploymentImpl _value,
      $Res Function(_$RemoveUserEmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmployment = null,
  }) {
    return _then(_$RemoveUserEmploymentImpl(
      null == userEmployment
          ? _value.userEmployment
          : userEmployment // ignore: cast_nullable_to_non_nullable
              as UserEmployment,
    ));
  }

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEmploymentCopyWith<$Res> get userEmployment {
    return $UserEmploymentCopyWith<$Res>(_value.userEmployment, (value) {
      return _then(_value.copyWith(userEmployment: value));
    });
  }
}

/// @nodoc

class _$RemoveUserEmploymentImpl implements _RemoveUserEmployment {
  const _$RemoveUserEmploymentImpl(this.userEmployment);

  @override
  final UserEmployment userEmployment;

  @override
  String toString() {
    return 'UserEmploymentManagementEvent.removeUserEmployment(userEmployment: $userEmployment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveUserEmploymentImpl &&
            (identical(other.userEmployment, userEmployment) ||
                other.userEmployment == userEmployment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEmployment);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveUserEmploymentImplCopyWith<_$RemoveUserEmploymentImpl>
      get copyWith =>
          __$$RemoveUserEmploymentImplCopyWithImpl<_$RemoveUserEmploymentImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserEmployment,
    required TResult Function(UserEmployment userEmployment) addUserEmployment,
    required TResult Function(UserEmployment userEmployment)
        removeUserEmployment,
    required TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)
        updateUserEmployment,
  }) {
    return removeUserEmployment(userEmployment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserEmployment,
    TResult? Function(UserEmployment userEmployment)? addUserEmployment,
    TResult? Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult? Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
  }) {
    return removeUserEmployment?.call(userEmployment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserEmployment,
    TResult Function(UserEmployment userEmployment)? addUserEmployment,
    TResult Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
    required TResult orElse(),
  }) {
    if (removeUserEmployment != null) {
      return removeUserEmployment(userEmployment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserEmployment value) initUserEmployment,
    required TResult Function(_AddUserEmployment value) addUserEmployment,
    required TResult Function(_RemoveUserEmployment value) removeUserEmployment,
    required TResult Function(_UpdateUserEmployment value) updateUserEmployment,
  }) {
    return removeUserEmployment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserEmployment value)? initUserEmployment,
    TResult? Function(_AddUserEmployment value)? addUserEmployment,
    TResult? Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult? Function(_UpdateUserEmployment value)? updateUserEmployment,
  }) {
    return removeUserEmployment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserEmployment value)? initUserEmployment,
    TResult Function(_AddUserEmployment value)? addUserEmployment,
    TResult Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult Function(_UpdateUserEmployment value)? updateUserEmployment,
    required TResult orElse(),
  }) {
    if (removeUserEmployment != null) {
      return removeUserEmployment(this);
    }
    return orElse();
  }
}

abstract class _RemoveUserEmployment implements UserEmploymentManagementEvent {
  const factory _RemoveUserEmployment(final UserEmployment userEmployment) =
      _$RemoveUserEmploymentImpl;

  UserEmployment get userEmployment;

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveUserEmploymentImplCopyWith<_$RemoveUserEmploymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserEmploymentImplCopyWith<$Res> {
  factory _$$UpdateUserEmploymentImplCopyWith(_$UpdateUserEmploymentImpl value,
          $Res Function(_$UpdateUserEmploymentImpl) then) =
      __$$UpdateUserEmploymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserEmployment oldUserEmployment, UserEmployment newUserEmployment});

  $UserEmploymentCopyWith<$Res> get oldUserEmployment;
  $UserEmploymentCopyWith<$Res> get newUserEmployment;
}

/// @nodoc
class __$$UpdateUserEmploymentImplCopyWithImpl<$Res>
    extends _$UserEmploymentManagementEventCopyWithImpl<$Res,
        _$UpdateUserEmploymentImpl>
    implements _$$UpdateUserEmploymentImplCopyWith<$Res> {
  __$$UpdateUserEmploymentImplCopyWithImpl(_$UpdateUserEmploymentImpl _value,
      $Res Function(_$UpdateUserEmploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldUserEmployment = null,
    Object? newUserEmployment = null,
  }) {
    return _then(_$UpdateUserEmploymentImpl(
      oldUserEmployment: null == oldUserEmployment
          ? _value.oldUserEmployment
          : oldUserEmployment // ignore: cast_nullable_to_non_nullable
              as UserEmployment,
      newUserEmployment: null == newUserEmployment
          ? _value.newUserEmployment
          : newUserEmployment // ignore: cast_nullable_to_non_nullable
              as UserEmployment,
    ));
  }

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEmploymentCopyWith<$Res> get oldUserEmployment {
    return $UserEmploymentCopyWith<$Res>(_value.oldUserEmployment, (value) {
      return _then(_value.copyWith(oldUserEmployment: value));
    });
  }

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEmploymentCopyWith<$Res> get newUserEmployment {
    return $UserEmploymentCopyWith<$Res>(_value.newUserEmployment, (value) {
      return _then(_value.copyWith(newUserEmployment: value));
    });
  }
}

/// @nodoc

class _$UpdateUserEmploymentImpl implements _UpdateUserEmployment {
  const _$UpdateUserEmploymentImpl(
      {required this.oldUserEmployment, required this.newUserEmployment});

  @override
  final UserEmployment oldUserEmployment;
  @override
  final UserEmployment newUserEmployment;

  @override
  String toString() {
    return 'UserEmploymentManagementEvent.updateUserEmployment(oldUserEmployment: $oldUserEmployment, newUserEmployment: $newUserEmployment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserEmploymentImpl &&
            (identical(other.oldUserEmployment, oldUserEmployment) ||
                other.oldUserEmployment == oldUserEmployment) &&
            (identical(other.newUserEmployment, newUserEmployment) ||
                other.newUserEmployment == newUserEmployment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldUserEmployment, newUserEmployment);

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserEmploymentImplCopyWith<_$UpdateUserEmploymentImpl>
      get copyWith =>
          __$$UpdateUserEmploymentImplCopyWithImpl<_$UpdateUserEmploymentImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserEmployment,
    required TResult Function(UserEmployment userEmployment) addUserEmployment,
    required TResult Function(UserEmployment userEmployment)
        removeUserEmployment,
    required TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)
        updateUserEmployment,
  }) {
    return updateUserEmployment(oldUserEmployment, newUserEmployment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserEmployment,
    TResult? Function(UserEmployment userEmployment)? addUserEmployment,
    TResult? Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult? Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
  }) {
    return updateUserEmployment?.call(oldUserEmployment, newUserEmployment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserEmployment,
    TResult Function(UserEmployment userEmployment)? addUserEmployment,
    TResult Function(UserEmployment userEmployment)? removeUserEmployment,
    TResult Function(
            UserEmployment oldUserEmployment, UserEmployment newUserEmployment)?
        updateUserEmployment,
    required TResult orElse(),
  }) {
    if (updateUserEmployment != null) {
      return updateUserEmployment(oldUserEmployment, newUserEmployment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserEmployment value) initUserEmployment,
    required TResult Function(_AddUserEmployment value) addUserEmployment,
    required TResult Function(_RemoveUserEmployment value) removeUserEmployment,
    required TResult Function(_UpdateUserEmployment value) updateUserEmployment,
  }) {
    return updateUserEmployment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserEmployment value)? initUserEmployment,
    TResult? Function(_AddUserEmployment value)? addUserEmployment,
    TResult? Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult? Function(_UpdateUserEmployment value)? updateUserEmployment,
  }) {
    return updateUserEmployment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserEmployment value)? initUserEmployment,
    TResult Function(_AddUserEmployment value)? addUserEmployment,
    TResult Function(_RemoveUserEmployment value)? removeUserEmployment,
    TResult Function(_UpdateUserEmployment value)? updateUserEmployment,
    required TResult orElse(),
  }) {
    if (updateUserEmployment != null) {
      return updateUserEmployment(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserEmployment implements UserEmploymentManagementEvent {
  const factory _UpdateUserEmployment(
          {required final UserEmployment oldUserEmployment,
          required final UserEmployment newUserEmployment}) =
      _$UpdateUserEmploymentImpl;

  UserEmployment get oldUserEmployment;
  UserEmployment get newUserEmployment;

  /// Create a copy of UserEmploymentManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserEmploymentImplCopyWith<_$UpdateUserEmploymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEmploymentManagementState {
  List<UserEmployment> get userEmployments =>
      throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  /// Create a copy of UserEmploymentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserEmploymentManagementStateCopyWith<UserEmploymentManagementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEmploymentManagementStateCopyWith<$Res> {
  factory $UserEmploymentManagementStateCopyWith(
          UserEmploymentManagementState value,
          $Res Function(UserEmploymentManagementState) then) =
      _$UserEmploymentManagementStateCopyWithImpl<$Res,
          UserEmploymentManagementState>;
  @useResult
  $Res call({List<UserEmployment> userEmployments, int userId});
}

/// @nodoc
class _$UserEmploymentManagementStateCopyWithImpl<$Res,
        $Val extends UserEmploymentManagementState>
    implements $UserEmploymentManagementStateCopyWith<$Res> {
  _$UserEmploymentManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEmploymentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmployments = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userEmployments: null == userEmployments
          ? _value.userEmployments
          : userEmployments // ignore: cast_nullable_to_non_nullable
              as List<UserEmployment>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEmploymentManagementStateImplCopyWith<$Res>
    implements $UserEmploymentManagementStateCopyWith<$Res> {
  factory _$$UserEmploymentManagementStateImplCopyWith(
          _$UserEmploymentManagementStateImpl value,
          $Res Function(_$UserEmploymentManagementStateImpl) then) =
      __$$UserEmploymentManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserEmployment> userEmployments, int userId});
}

/// @nodoc
class __$$UserEmploymentManagementStateImplCopyWithImpl<$Res>
    extends _$UserEmploymentManagementStateCopyWithImpl<$Res,
        _$UserEmploymentManagementStateImpl>
    implements _$$UserEmploymentManagementStateImplCopyWith<$Res> {
  __$$UserEmploymentManagementStateImplCopyWithImpl(
      _$UserEmploymentManagementStateImpl _value,
      $Res Function(_$UserEmploymentManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEmploymentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmployments = null,
    Object? userId = null,
  }) {
    return _then(_$UserEmploymentManagementStateImpl(
      userEmployments: null == userEmployments
          ? _value._userEmployments
          : userEmployments // ignore: cast_nullable_to_non_nullable
              as List<UserEmployment>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserEmploymentManagementStateImpl
    implements _UserEmploymentManagementState {
  const _$UserEmploymentManagementStateImpl(
      {required final List<UserEmployment> userEmployments,
      required this.userId})
      : _userEmployments = userEmployments;

  final List<UserEmployment> _userEmployments;
  @override
  List<UserEmployment> get userEmployments {
    if (_userEmployments is EqualUnmodifiableListView) return _userEmployments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userEmployments);
  }

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEmploymentManagementState(userEmployments: $userEmployments, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEmploymentManagementStateImpl &&
            const DeepCollectionEquality()
                .equals(other._userEmployments, _userEmployments) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_userEmployments), userId);

  /// Create a copy of UserEmploymentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEmploymentManagementStateImplCopyWith<
          _$UserEmploymentManagementStateImpl>
      get copyWith => __$$UserEmploymentManagementStateImplCopyWithImpl<
          _$UserEmploymentManagementStateImpl>(this, _$identity);
}

abstract class _UserEmploymentManagementState
    implements UserEmploymentManagementState {
  const factory _UserEmploymentManagementState(
      {required final List<UserEmployment> userEmployments,
      required final int userId}) = _$UserEmploymentManagementStateImpl;

  @override
  List<UserEmployment> get userEmployments;
  @override
  int get userId;

  /// Create a copy of UserEmploymentManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEmploymentManagementStateImplCopyWith<
          _$UserEmploymentManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
