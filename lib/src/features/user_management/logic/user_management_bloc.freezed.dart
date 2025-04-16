// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUsers,
    required TResult Function(User user) addUser,
    required TResult Function(User user) removeUser,
    required TResult Function(User oldUser, User newUser) updateUser,
    required TResult Function(User user) changeUserStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initUsers,
    TResult? Function(User user)? addUser,
    TResult? Function(User user)? removeUser,
    TResult? Function(User oldUser, User newUser)? updateUser,
    TResult? Function(User user)? changeUserStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUsers,
    TResult Function(User user)? addUser,
    TResult Function(User user)? removeUser,
    TResult Function(User oldUser, User newUser)? updateUser,
    TResult Function(User user)? changeUserStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUsers value) initUsers,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_ChangeUserStatus value) changeUserStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUsers value)? initUsers,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_RemoveUser value)? removeUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_ChangeUserStatus value)? changeUserStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUsers value)? initUsers,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_ChangeUserStatus value)? changeUserStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementEventCopyWith<$Res> {
  factory $UserManagementEventCopyWith(
          UserManagementEvent value, $Res Function(UserManagementEvent) then) =
      _$UserManagementEventCopyWithImpl<$Res, UserManagementEvent>;
}

/// @nodoc
class _$UserManagementEventCopyWithImpl<$Res, $Val extends UserManagementEvent>
    implements $UserManagementEventCopyWith<$Res> {
  _$UserManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitUsersImplCopyWith<$Res> {
  factory _$$InitUsersImplCopyWith(
          _$InitUsersImpl value, $Res Function(_$InitUsersImpl) then) =
      __$$InitUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitUsersImplCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res, _$InitUsersImpl>
    implements _$$InitUsersImplCopyWith<$Res> {
  __$$InitUsersImplCopyWithImpl(
      _$InitUsersImpl _value, $Res Function(_$InitUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitUsersImpl implements _InitUsers {
  const _$InitUsersImpl();

  @override
  String toString() {
    return 'UserManagementEvent.initUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUsers,
    required TResult Function(User user) addUser,
    required TResult Function(User user) removeUser,
    required TResult Function(User oldUser, User newUser) updateUser,
    required TResult Function(User user) changeUserStatus,
  }) {
    return initUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initUsers,
    TResult? Function(User user)? addUser,
    TResult? Function(User user)? removeUser,
    TResult? Function(User oldUser, User newUser)? updateUser,
    TResult? Function(User user)? changeUserStatus,
  }) {
    return initUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUsers,
    TResult Function(User user)? addUser,
    TResult Function(User user)? removeUser,
    TResult Function(User oldUser, User newUser)? updateUser,
    TResult Function(User user)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (initUsers != null) {
      return initUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUsers value) initUsers,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_ChangeUserStatus value) changeUserStatus,
  }) {
    return initUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUsers value)? initUsers,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_RemoveUser value)? removeUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_ChangeUserStatus value)? changeUserStatus,
  }) {
    return initUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUsers value)? initUsers,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_ChangeUserStatus value)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (initUsers != null) {
      return initUsers(this);
    }
    return orElse();
  }
}

abstract class _InitUsers implements UserManagementEvent {
  const factory _InitUsers() = _$InitUsersImpl;
}

/// @nodoc
abstract class _$$AddUserImplCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
          _$AddUserImpl value, $Res Function(_$AddUserImpl) then) =
      __$$AddUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
      _$AddUserImpl _value, $Res Function(_$AddUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AddUserImpl implements _AddUser {
  const _$AddUserImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserManagementEvent.addUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      __$$AddUserImplCopyWithImpl<_$AddUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUsers,
    required TResult Function(User user) addUser,
    required TResult Function(User user) removeUser,
    required TResult Function(User oldUser, User newUser) updateUser,
    required TResult Function(User user) changeUserStatus,
  }) {
    return addUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initUsers,
    TResult? Function(User user)? addUser,
    TResult? Function(User user)? removeUser,
    TResult? Function(User oldUser, User newUser)? updateUser,
    TResult? Function(User user)? changeUserStatus,
  }) {
    return addUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUsers,
    TResult Function(User user)? addUser,
    TResult Function(User user)? removeUser,
    TResult Function(User oldUser, User newUser)? updateUser,
    TResult Function(User user)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUsers value) initUsers,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_ChangeUserStatus value) changeUserStatus,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUsers value)? initUsers,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_RemoveUser value)? removeUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_ChangeUserStatus value)? changeUserStatus,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUsers value)? initUsers,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_ChangeUserStatus value)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _AddUser implements UserManagementEvent {
  const factory _AddUser(final User user) = _$AddUserImpl;

  User get user;

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveUserImplCopyWith<$Res> {
  factory _$$RemoveUserImplCopyWith(
          _$RemoveUserImpl value, $Res Function(_$RemoveUserImpl) then) =
      __$$RemoveUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RemoveUserImplCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res, _$RemoveUserImpl>
    implements _$$RemoveUserImplCopyWith<$Res> {
  __$$RemoveUserImplCopyWithImpl(
      _$RemoveUserImpl _value, $Res Function(_$RemoveUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RemoveUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RemoveUserImpl implements _RemoveUser {
  const _$RemoveUserImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserManagementEvent.removeUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveUserImplCopyWith<_$RemoveUserImpl> get copyWith =>
      __$$RemoveUserImplCopyWithImpl<_$RemoveUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUsers,
    required TResult Function(User user) addUser,
    required TResult Function(User user) removeUser,
    required TResult Function(User oldUser, User newUser) updateUser,
    required TResult Function(User user) changeUserStatus,
  }) {
    return removeUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initUsers,
    TResult? Function(User user)? addUser,
    TResult? Function(User user)? removeUser,
    TResult? Function(User oldUser, User newUser)? updateUser,
    TResult? Function(User user)? changeUserStatus,
  }) {
    return removeUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUsers,
    TResult Function(User user)? addUser,
    TResult Function(User user)? removeUser,
    TResult Function(User oldUser, User newUser)? updateUser,
    TResult Function(User user)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (removeUser != null) {
      return removeUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUsers value) initUsers,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_ChangeUserStatus value) changeUserStatus,
  }) {
    return removeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUsers value)? initUsers,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_RemoveUser value)? removeUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_ChangeUserStatus value)? changeUserStatus,
  }) {
    return removeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUsers value)? initUsers,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_ChangeUserStatus value)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (removeUser != null) {
      return removeUser(this);
    }
    return orElse();
  }
}

abstract class _RemoveUser implements UserManagementEvent {
  const factory _RemoveUser(final User user) = _$RemoveUserImpl;

  User get user;

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveUserImplCopyWith<_$RemoveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User oldUser, User newUser});

  $UserCopyWith<$Res> get oldUser;
  $UserCopyWith<$Res> get newUser;
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldUser = null,
    Object? newUser = null,
  }) {
    return _then(_$UpdateUserImpl(
      oldUser: null == oldUser
          ? _value.oldUser
          : oldUser // ignore: cast_nullable_to_non_nullable
              as User,
      newUser: null == newUser
          ? _value.newUser
          : newUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get oldUser {
    return $UserCopyWith<$Res>(_value.oldUser, (value) {
      return _then(_value.copyWith(oldUser: value));
    });
  }

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get newUser {
    return $UserCopyWith<$Res>(_value.newUser, (value) {
      return _then(_value.copyWith(newUser: value));
    });
  }
}

/// @nodoc

class _$UpdateUserImpl implements _UpdateUser {
  const _$UpdateUserImpl({required this.oldUser, required this.newUser});

  @override
  final User oldUser;
  @override
  final User newUser;

  @override
  String toString() {
    return 'UserManagementEvent.updateUser(oldUser: $oldUser, newUser: $newUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.oldUser, oldUser) || other.oldUser == oldUser) &&
            (identical(other.newUser, newUser) || other.newUser == newUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldUser, newUser);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUsers,
    required TResult Function(User user) addUser,
    required TResult Function(User user) removeUser,
    required TResult Function(User oldUser, User newUser) updateUser,
    required TResult Function(User user) changeUserStatus,
  }) {
    return updateUser(oldUser, newUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initUsers,
    TResult? Function(User user)? addUser,
    TResult? Function(User user)? removeUser,
    TResult? Function(User oldUser, User newUser)? updateUser,
    TResult? Function(User user)? changeUserStatus,
  }) {
    return updateUser?.call(oldUser, newUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUsers,
    TResult Function(User user)? addUser,
    TResult Function(User user)? removeUser,
    TResult Function(User oldUser, User newUser)? updateUser,
    TResult Function(User user)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(oldUser, newUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUsers value) initUsers,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_ChangeUserStatus value) changeUserStatus,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUsers value)? initUsers,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_RemoveUser value)? removeUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_ChangeUserStatus value)? changeUserStatus,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUsers value)? initUsers,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_ChangeUserStatus value)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements UserManagementEvent {
  const factory _UpdateUser(
      {required final User oldUser,
      required final User newUser}) = _$UpdateUserImpl;

  User get oldUser;
  User get newUser;

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUserStatusImplCopyWith<$Res> {
  factory _$$ChangeUserStatusImplCopyWith(_$ChangeUserStatusImpl value,
          $Res Function(_$ChangeUserStatusImpl) then) =
      __$$ChangeUserStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChangeUserStatusImplCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res, _$ChangeUserStatusImpl>
    implements _$$ChangeUserStatusImplCopyWith<$Res> {
  __$$ChangeUserStatusImplCopyWithImpl(_$ChangeUserStatusImpl _value,
      $Res Function(_$ChangeUserStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ChangeUserStatusImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ChangeUserStatusImpl implements _ChangeUserStatus {
  const _$ChangeUserStatusImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserManagementEvent.changeUserStatus(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUserStatusImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUserStatusImplCopyWith<_$ChangeUserStatusImpl> get copyWith =>
      __$$ChangeUserStatusImplCopyWithImpl<_$ChangeUserStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initUsers,
    required TResult Function(User user) addUser,
    required TResult Function(User user) removeUser,
    required TResult Function(User oldUser, User newUser) updateUser,
    required TResult Function(User user) changeUserStatus,
  }) {
    return changeUserStatus(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initUsers,
    TResult? Function(User user)? addUser,
    TResult? Function(User user)? removeUser,
    TResult? Function(User oldUser, User newUser)? updateUser,
    TResult? Function(User user)? changeUserStatus,
  }) {
    return changeUserStatus?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initUsers,
    TResult Function(User user)? addUser,
    TResult Function(User user)? removeUser,
    TResult Function(User oldUser, User newUser)? updateUser,
    TResult Function(User user)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (changeUserStatus != null) {
      return changeUserStatus(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitUsers value) initUsers,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_ChangeUserStatus value) changeUserStatus,
  }) {
    return changeUserStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitUsers value)? initUsers,
    TResult? Function(_AddUser value)? addUser,
    TResult? Function(_RemoveUser value)? removeUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_ChangeUserStatus value)? changeUserStatus,
  }) {
    return changeUserStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitUsers value)? initUsers,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_ChangeUserStatus value)? changeUserStatus,
    required TResult orElse(),
  }) {
    if (changeUserStatus != null) {
      return changeUserStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeUserStatus implements UserManagementEvent {
  const factory _ChangeUserStatus(final User user) = _$ChangeUserStatusImpl;

  User get user;

  /// Create a copy of UserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeUserStatusImplCopyWith<_$ChangeUserStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserManagementState {
  List<User> get users => throw _privateConstructorUsedError;

  /// Create a copy of UserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserManagementStateCopyWith<UserManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementStateCopyWith<$Res> {
  factory $UserManagementStateCopyWith(
          UserManagementState value, $Res Function(UserManagementState) then) =
      _$UserManagementStateCopyWithImpl<$Res, UserManagementState>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class _$UserManagementStateCopyWithImpl<$Res, $Val extends UserManagementState>
    implements $UserManagementStateCopyWith<$Res> {
  _$UserManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserManagementStateImplCopyWith<$Res>
    implements $UserManagementStateCopyWith<$Res> {
  factory _$$UserManagementStateImplCopyWith(_$UserManagementStateImpl value,
          $Res Function(_$UserManagementStateImpl) then) =
      __$$UserManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$UserManagementStateImplCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res, _$UserManagementStateImpl>
    implements _$$UserManagementStateImplCopyWith<$Res> {
  __$$UserManagementStateImplCopyWithImpl(_$UserManagementStateImpl _value,
      $Res Function(_$UserManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserManagementStateImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$UserManagementStateImpl implements _UserManagementState {
  const _$UserManagementStateImpl({required final List<User> users})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserManagementState(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserManagementStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of UserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserManagementStateImplCopyWith<_$UserManagementStateImpl> get copyWith =>
      __$$UserManagementStateImplCopyWithImpl<_$UserManagementStateImpl>(
          this, _$identity);
}

abstract class _UserManagementState implements UserManagementState {
  const factory _UserManagementState({required final List<User> users}) =
      _$UserManagementStateImpl;

  @override
  List<User> get users;

  /// Create a copy of UserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserManagementStateImplCopyWith<_$UserManagementStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
