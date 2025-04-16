// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserAddressManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserAddress,
    required TResult Function(UserAddress userAddress) addUserAddress,
    required TResult Function(UserAddress userAddress) removeUserAddress,
    required TResult Function(
            UserAddress oldUserAddress, UserAddress newUserAddress)
        updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserAddress,
    TResult? Function(UserAddress userAddress)? addUserAddress,
    TResult? Function(UserAddress userAddress)? removeUserAddress,
    TResult? Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserAddress,
    TResult Function(UserAddress userAddress)? addUserAddress,
    TResult Function(UserAddress userAddress)? removeUserAddress,
    TResult Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserAddress value) initUserAddress,
    required TResult Function(_AddUserAddress value) addUserAddress,
    required TResult Function(_RemoveUserAddress value) removeUserAddress,
    required TResult Function(_UpdateUserAddress value) updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserAddress value)? initUserAddress,
    TResult? Function(_AddUserAddress value)? addUserAddress,
    TResult? Function(_RemoveUserAddress value)? removeUserAddress,
    TResult? Function(_UpdateUserAddress value)? updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserAddress value)? initUserAddress,
    TResult Function(_AddUserAddress value)? addUserAddress,
    TResult Function(_RemoveUserAddress value)? removeUserAddress,
    TResult Function(_UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressManagementEventCopyWith<$Res> {
  factory $UserAddressManagementEventCopyWith(UserAddressManagementEvent value,
          $Res Function(UserAddressManagementEvent) then) =
      _$UserAddressManagementEventCopyWithImpl<$Res,
          UserAddressManagementEvent>;
}

/// @nodoc
class _$UserAddressManagementEventCopyWithImpl<$Res,
        $Val extends UserAddressManagementEvent>
    implements $UserAddressManagementEventCopyWith<$Res> {
  _$UserAddressManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitUserAddressImplCopyWith<$Res> {
  factory _$$InitUserAddressImplCopyWith(_$InitUserAddressImpl value,
          $Res Function(_$InitUserAddressImpl) then) =
      __$$InitUserAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$InitUserAddressImplCopyWithImpl<$Res>
    extends _$UserAddressManagementEventCopyWithImpl<$Res,
        _$InitUserAddressImpl> implements _$$InitUserAddressImplCopyWith<$Res> {
  __$$InitUserAddressImplCopyWithImpl(
      _$InitUserAddressImpl _value, $Res Function(_$InitUserAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$InitUserAddressImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitUserAddressImpl implements _InitUserAddress {
  const _$InitUserAddressImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserAddressManagementEvent.initUserAddress(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitUserAddressImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitUserAddressImplCopyWith<_$InitUserAddressImpl> get copyWith =>
      __$$InitUserAddressImplCopyWithImpl<_$InitUserAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserAddress,
    required TResult Function(UserAddress userAddress) addUserAddress,
    required TResult Function(UserAddress userAddress) removeUserAddress,
    required TResult Function(
            UserAddress oldUserAddress, UserAddress newUserAddress)
        updateUserAddress,
  }) {
    return initUserAddress(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserAddress,
    TResult? Function(UserAddress userAddress)? addUserAddress,
    TResult? Function(UserAddress userAddress)? removeUserAddress,
    TResult? Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
  }) {
    return initUserAddress?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserAddress,
    TResult Function(UserAddress userAddress)? addUserAddress,
    TResult Function(UserAddress userAddress)? removeUserAddress,
    TResult Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
    required TResult orElse(),
  }) {
    if (initUserAddress != null) {
      return initUserAddress(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserAddress value) initUserAddress,
    required TResult Function(_AddUserAddress value) addUserAddress,
    required TResult Function(_RemoveUserAddress value) removeUserAddress,
    required TResult Function(_UpdateUserAddress value) updateUserAddress,
  }) {
    return initUserAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserAddress value)? initUserAddress,
    TResult? Function(_AddUserAddress value)? addUserAddress,
    TResult? Function(_RemoveUserAddress value)? removeUserAddress,
    TResult? Function(_UpdateUserAddress value)? updateUserAddress,
  }) {
    return initUserAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserAddress value)? initUserAddress,
    TResult Function(_AddUserAddress value)? addUserAddress,
    TResult Function(_RemoveUserAddress value)? removeUserAddress,
    TResult Function(_UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) {
    if (initUserAddress != null) {
      return initUserAddress(this);
    }
    return orElse();
  }
}

abstract class _InitUserAddress implements UserAddressManagementEvent {
  const factory _InitUserAddress(final int userId) = _$InitUserAddressImpl;

  int get userId;

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitUserAddressImplCopyWith<_$InitUserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserAddressImplCopyWith<$Res> {
  factory _$$AddUserAddressImplCopyWith(_$AddUserAddressImpl value,
          $Res Function(_$AddUserAddressImpl) then) =
      __$$AddUserAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAddress userAddress});

  $UserAddressCopyWith<$Res> get userAddress;
}

/// @nodoc
class __$$AddUserAddressImplCopyWithImpl<$Res>
    extends _$UserAddressManagementEventCopyWithImpl<$Res, _$AddUserAddressImpl>
    implements _$$AddUserAddressImplCopyWith<$Res> {
  __$$AddUserAddressImplCopyWithImpl(
      _$AddUserAddressImpl _value, $Res Function(_$AddUserAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
  }) {
    return _then(_$AddUserAddressImpl(
      null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
    ));
  }

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAddressCopyWith<$Res> get userAddress {
    return $UserAddressCopyWith<$Res>(_value.userAddress, (value) {
      return _then(_value.copyWith(userAddress: value));
    });
  }
}

/// @nodoc

class _$AddUserAddressImpl implements _AddUserAddress {
  const _$AddUserAddressImpl(this.userAddress);

  @override
  final UserAddress userAddress;

  @override
  String toString() {
    return 'UserAddressManagementEvent.addUserAddress(userAddress: $userAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserAddressImpl &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAddress);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserAddressImplCopyWith<_$AddUserAddressImpl> get copyWith =>
      __$$AddUserAddressImplCopyWithImpl<_$AddUserAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserAddress,
    required TResult Function(UserAddress userAddress) addUserAddress,
    required TResult Function(UserAddress userAddress) removeUserAddress,
    required TResult Function(
            UserAddress oldUserAddress, UserAddress newUserAddress)
        updateUserAddress,
  }) {
    return addUserAddress(userAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserAddress,
    TResult? Function(UserAddress userAddress)? addUserAddress,
    TResult? Function(UserAddress userAddress)? removeUserAddress,
    TResult? Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
  }) {
    return addUserAddress?.call(userAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserAddress,
    TResult Function(UserAddress userAddress)? addUserAddress,
    TResult Function(UserAddress userAddress)? removeUserAddress,
    TResult Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
    required TResult orElse(),
  }) {
    if (addUserAddress != null) {
      return addUserAddress(userAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserAddress value) initUserAddress,
    required TResult Function(_AddUserAddress value) addUserAddress,
    required TResult Function(_RemoveUserAddress value) removeUserAddress,
    required TResult Function(_UpdateUserAddress value) updateUserAddress,
  }) {
    return addUserAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserAddress value)? initUserAddress,
    TResult? Function(_AddUserAddress value)? addUserAddress,
    TResult? Function(_RemoveUserAddress value)? removeUserAddress,
    TResult? Function(_UpdateUserAddress value)? updateUserAddress,
  }) {
    return addUserAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserAddress value)? initUserAddress,
    TResult Function(_AddUserAddress value)? addUserAddress,
    TResult Function(_RemoveUserAddress value)? removeUserAddress,
    TResult Function(_UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) {
    if (addUserAddress != null) {
      return addUserAddress(this);
    }
    return orElse();
  }
}

abstract class _AddUserAddress implements UserAddressManagementEvent {
  const factory _AddUserAddress(final UserAddress userAddress) =
      _$AddUserAddressImpl;

  UserAddress get userAddress;

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserAddressImplCopyWith<_$AddUserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveUserAddressImplCopyWith<$Res> {
  factory _$$RemoveUserAddressImplCopyWith(_$RemoveUserAddressImpl value,
          $Res Function(_$RemoveUserAddressImpl) then) =
      __$$RemoveUserAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAddress userAddress});

  $UserAddressCopyWith<$Res> get userAddress;
}

/// @nodoc
class __$$RemoveUserAddressImplCopyWithImpl<$Res>
    extends _$UserAddressManagementEventCopyWithImpl<$Res,
        _$RemoveUserAddressImpl>
    implements _$$RemoveUserAddressImplCopyWith<$Res> {
  __$$RemoveUserAddressImplCopyWithImpl(_$RemoveUserAddressImpl _value,
      $Res Function(_$RemoveUserAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
  }) {
    return _then(_$RemoveUserAddressImpl(
      null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
    ));
  }

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAddressCopyWith<$Res> get userAddress {
    return $UserAddressCopyWith<$Res>(_value.userAddress, (value) {
      return _then(_value.copyWith(userAddress: value));
    });
  }
}

/// @nodoc

class _$RemoveUserAddressImpl implements _RemoveUserAddress {
  const _$RemoveUserAddressImpl(this.userAddress);

  @override
  final UserAddress userAddress;

  @override
  String toString() {
    return 'UserAddressManagementEvent.removeUserAddress(userAddress: $userAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveUserAddressImpl &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAddress);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveUserAddressImplCopyWith<_$RemoveUserAddressImpl> get copyWith =>
      __$$RemoveUserAddressImplCopyWithImpl<_$RemoveUserAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserAddress,
    required TResult Function(UserAddress userAddress) addUserAddress,
    required TResult Function(UserAddress userAddress) removeUserAddress,
    required TResult Function(
            UserAddress oldUserAddress, UserAddress newUserAddress)
        updateUserAddress,
  }) {
    return removeUserAddress(userAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserAddress,
    TResult? Function(UserAddress userAddress)? addUserAddress,
    TResult? Function(UserAddress userAddress)? removeUserAddress,
    TResult? Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
  }) {
    return removeUserAddress?.call(userAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserAddress,
    TResult Function(UserAddress userAddress)? addUserAddress,
    TResult Function(UserAddress userAddress)? removeUserAddress,
    TResult Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
    required TResult orElse(),
  }) {
    if (removeUserAddress != null) {
      return removeUserAddress(userAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserAddress value) initUserAddress,
    required TResult Function(_AddUserAddress value) addUserAddress,
    required TResult Function(_RemoveUserAddress value) removeUserAddress,
    required TResult Function(_UpdateUserAddress value) updateUserAddress,
  }) {
    return removeUserAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserAddress value)? initUserAddress,
    TResult? Function(_AddUserAddress value)? addUserAddress,
    TResult? Function(_RemoveUserAddress value)? removeUserAddress,
    TResult? Function(_UpdateUserAddress value)? updateUserAddress,
  }) {
    return removeUserAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserAddress value)? initUserAddress,
    TResult Function(_AddUserAddress value)? addUserAddress,
    TResult Function(_RemoveUserAddress value)? removeUserAddress,
    TResult Function(_UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) {
    if (removeUserAddress != null) {
      return removeUserAddress(this);
    }
    return orElse();
  }
}

abstract class _RemoveUserAddress implements UserAddressManagementEvent {
  const factory _RemoveUserAddress(final UserAddress userAddress) =
      _$RemoveUserAddressImpl;

  UserAddress get userAddress;

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveUserAddressImplCopyWith<_$RemoveUserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserAddressImplCopyWith<$Res> {
  factory _$$UpdateUserAddressImplCopyWith(_$UpdateUserAddressImpl value,
          $Res Function(_$UpdateUserAddressImpl) then) =
      __$$UpdateUserAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAddress oldUserAddress, UserAddress newUserAddress});

  $UserAddressCopyWith<$Res> get oldUserAddress;
  $UserAddressCopyWith<$Res> get newUserAddress;
}

/// @nodoc
class __$$UpdateUserAddressImplCopyWithImpl<$Res>
    extends _$UserAddressManagementEventCopyWithImpl<$Res,
        _$UpdateUserAddressImpl>
    implements _$$UpdateUserAddressImplCopyWith<$Res> {
  __$$UpdateUserAddressImplCopyWithImpl(_$UpdateUserAddressImpl _value,
      $Res Function(_$UpdateUserAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldUserAddress = null,
    Object? newUserAddress = null,
  }) {
    return _then(_$UpdateUserAddressImpl(
      oldUserAddress: null == oldUserAddress
          ? _value.oldUserAddress
          : oldUserAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      newUserAddress: null == newUserAddress
          ? _value.newUserAddress
          : newUserAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
    ));
  }

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAddressCopyWith<$Res> get oldUserAddress {
    return $UserAddressCopyWith<$Res>(_value.oldUserAddress, (value) {
      return _then(_value.copyWith(oldUserAddress: value));
    });
  }

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAddressCopyWith<$Res> get newUserAddress {
    return $UserAddressCopyWith<$Res>(_value.newUserAddress, (value) {
      return _then(_value.copyWith(newUserAddress: value));
    });
  }
}

/// @nodoc

class _$UpdateUserAddressImpl implements _UpdateUserAddress {
  const _$UpdateUserAddressImpl(
      {required this.oldUserAddress, required this.newUserAddress});

  @override
  final UserAddress oldUserAddress;
  @override
  final UserAddress newUserAddress;

  @override
  String toString() {
    return 'UserAddressManagementEvent.updateUserAddress(oldUserAddress: $oldUserAddress, newUserAddress: $newUserAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserAddressImpl &&
            (identical(other.oldUserAddress, oldUserAddress) ||
                other.oldUserAddress == oldUserAddress) &&
            (identical(other.newUserAddress, newUserAddress) ||
                other.newUserAddress == newUserAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldUserAddress, newUserAddress);

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserAddressImplCopyWith<_$UpdateUserAddressImpl> get copyWith =>
      __$$UpdateUserAddressImplCopyWithImpl<_$UpdateUserAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) initUserAddress,
    required TResult Function(UserAddress userAddress) addUserAddress,
    required TResult Function(UserAddress userAddress) removeUserAddress,
    required TResult Function(
            UserAddress oldUserAddress, UserAddress newUserAddress)
        updateUserAddress,
  }) {
    return updateUserAddress(oldUserAddress, newUserAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? initUserAddress,
    TResult? Function(UserAddress userAddress)? addUserAddress,
    TResult? Function(UserAddress userAddress)? removeUserAddress,
    TResult? Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
  }) {
    return updateUserAddress?.call(oldUserAddress, newUserAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? initUserAddress,
    TResult Function(UserAddress userAddress)? addUserAddress,
    TResult Function(UserAddress userAddress)? removeUserAddress,
    TResult Function(UserAddress oldUserAddress, UserAddress newUserAddress)?
        updateUserAddress,
    required TResult orElse(),
  }) {
    if (updateUserAddress != null) {
      return updateUserAddress(oldUserAddress, newUserAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUserAddress value) initUserAddress,
    required TResult Function(_AddUserAddress value) addUserAddress,
    required TResult Function(_RemoveUserAddress value) removeUserAddress,
    required TResult Function(_UpdateUserAddress value) updateUserAddress,
  }) {
    return updateUserAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUserAddress value)? initUserAddress,
    TResult? Function(_AddUserAddress value)? addUserAddress,
    TResult? Function(_RemoveUserAddress value)? removeUserAddress,
    TResult? Function(_UpdateUserAddress value)? updateUserAddress,
  }) {
    return updateUserAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUserAddress value)? initUserAddress,
    TResult Function(_AddUserAddress value)? addUserAddress,
    TResult Function(_RemoveUserAddress value)? removeUserAddress,
    TResult Function(_UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) {
    if (updateUserAddress != null) {
      return updateUserAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserAddress implements UserAddressManagementEvent {
  const factory _UpdateUserAddress(
      {required final UserAddress oldUserAddress,
      required final UserAddress newUserAddress}) = _$UpdateUserAddressImpl;

  UserAddress get oldUserAddress;
  UserAddress get newUserAddress;

  /// Create a copy of UserAddressManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserAddressImplCopyWith<_$UpdateUserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAddressManagementState {
  List<UserAddress> get userAddresses => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressManagementStateCopyWith<UserAddressManagementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressManagementStateCopyWith<$Res> {
  factory $UserAddressManagementStateCopyWith(UserAddressManagementState value,
          $Res Function(UserAddressManagementState) then) =
      _$UserAddressManagementStateCopyWithImpl<$Res,
          UserAddressManagementState>;
  @useResult
  $Res call({List<UserAddress> userAddresses, int userId});
}

/// @nodoc
class _$UserAddressManagementStateCopyWithImpl<$Res,
        $Val extends UserAddressManagementState>
    implements $UserAddressManagementStateCopyWith<$Res> {
  _$UserAddressManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddresses = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userAddresses: null == userAddresses
          ? _value.userAddresses
          : userAddresses // ignore: cast_nullable_to_non_nullable
              as List<UserAddress>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddressManagementStateImplCopyWith<$Res>
    implements $UserAddressManagementStateCopyWith<$Res> {
  factory _$$UserAddressManagementStateImplCopyWith(
          _$UserAddressManagementStateImpl value,
          $Res Function(_$UserAddressManagementStateImpl) then) =
      __$$UserAddressManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserAddress> userAddresses, int userId});
}

/// @nodoc
class __$$UserAddressManagementStateImplCopyWithImpl<$Res>
    extends _$UserAddressManagementStateCopyWithImpl<$Res,
        _$UserAddressManagementStateImpl>
    implements _$$UserAddressManagementStateImplCopyWith<$Res> {
  __$$UserAddressManagementStateImplCopyWithImpl(
      _$UserAddressManagementStateImpl _value,
      $Res Function(_$UserAddressManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddresses = null,
    Object? userId = null,
  }) {
    return _then(_$UserAddressManagementStateImpl(
      userAddresses: null == userAddresses
          ? _value._userAddresses
          : userAddresses // ignore: cast_nullable_to_non_nullable
              as List<UserAddress>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserAddressManagementStateImpl implements _UserAddressManagementState {
  const _$UserAddressManagementStateImpl(
      {required final List<UserAddress> userAddresses, required this.userId})
      : _userAddresses = userAddresses;

  final List<UserAddress> _userAddresses;
  @override
  List<UserAddress> get userAddresses {
    if (_userAddresses is EqualUnmodifiableListView) return _userAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAddresses);
  }

  @override
  final int userId;

  @override
  String toString() {
    return 'UserAddressManagementState(userAddresses: $userAddresses, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressManagementStateImpl &&
            const DeepCollectionEquality()
                .equals(other._userAddresses, _userAddresses) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userAddresses), userId);

  /// Create a copy of UserAddressManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressManagementStateImplCopyWith<_$UserAddressManagementStateImpl>
      get copyWith => __$$UserAddressManagementStateImplCopyWithImpl<
          _$UserAddressManagementStateImpl>(this, _$identity);
}

abstract class _UserAddressManagementState
    implements UserAddressManagementState {
  const factory _UserAddressManagementState(
      {required final List<UserAddress> userAddresses,
      required final int userId}) = _$UserAddressManagementStateImpl;

  @override
  List<UserAddress> get userAddresses;
  @override
  int get userId;

  /// Create a copy of UserAddressManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressManagementStateImplCopyWith<_$UserAddressManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
