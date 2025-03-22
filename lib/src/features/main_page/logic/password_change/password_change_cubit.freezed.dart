// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordChangeState {
  String get password => throw _privateConstructorUsedError;
  String get passwordRepeated => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String passwordRepeated) initial,
    required TResult Function(String password, String passwordRepeated) loading,
    required TResult Function(String password, String passwordRepeated) loaded,
    required TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String passwordRepeated)? initial,
    TResult? Function(String password, String passwordRepeated)? loading,
    TResult? Function(String password, String passwordRepeated)? loaded,
    TResult? Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String passwordRepeated)? initial,
    TResult Function(String password, String passwordRepeated)? loading,
    TResult Function(String password, String passwordRepeated)? loaded,
    TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordChangeStateCopyWith<PasswordChangeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeStateCopyWith<$Res> {
  factory $PasswordChangeStateCopyWith(
          PasswordChangeState value, $Res Function(PasswordChangeState) then) =
      _$PasswordChangeStateCopyWithImpl<$Res, PasswordChangeState>;
  @useResult
  $Res call({String password, String passwordRepeated});
}

/// @nodoc
class _$PasswordChangeStateCopyWithImpl<$Res, $Val extends PasswordChangeState>
    implements $PasswordChangeStateCopyWith<$Res> {
  _$PasswordChangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordRepeated = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRepeated: null == passwordRepeated
          ? _value.passwordRepeated
          : passwordRepeated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PasswordChangeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String passwordRepeated});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PasswordChangeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordRepeated = null,
  }) {
    return _then(_$InitialImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRepeated: null == passwordRepeated
          ? _value.passwordRepeated
          : passwordRepeated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl({required this.password, required this.passwordRepeated});

  @override
  final String password;
  @override
  final String passwordRepeated;

  @override
  String toString() {
    return 'PasswordChangeState.initial(password: $password, passwordRepeated: $passwordRepeated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeated, passwordRepeated) ||
                other.passwordRepeated == passwordRepeated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordRepeated);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String passwordRepeated) initial,
    required TResult Function(String password, String passwordRepeated) loading,
    required TResult Function(String password, String passwordRepeated) loaded,
    required TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)
        error,
  }) {
    return initial(password, passwordRepeated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String passwordRepeated)? initial,
    TResult? Function(String password, String passwordRepeated)? loading,
    TResult? Function(String password, String passwordRepeated)? loaded,
    TResult? Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
  }) {
    return initial?.call(password, passwordRepeated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String passwordRepeated)? initial,
    TResult Function(String password, String passwordRepeated)? loading,
    TResult Function(String password, String passwordRepeated)? loaded,
    TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(password, passwordRepeated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PasswordChangeState {
  factory _Initial(
      {required final String password,
      required final String passwordRepeated}) = _$InitialImpl;

  @override
  String get password;
  @override
  String get passwordRepeated;

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $PasswordChangeStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String passwordRepeated});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PasswordChangeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordRepeated = null,
  }) {
    return _then(_$LoadingImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRepeated: null == passwordRepeated
          ? _value.passwordRepeated
          : passwordRepeated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  _$LoadingImpl({required this.password, required this.passwordRepeated});

  @override
  final String password;
  @override
  final String passwordRepeated;

  @override
  String toString() {
    return 'PasswordChangeState.loading(password: $password, passwordRepeated: $passwordRepeated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeated, passwordRepeated) ||
                other.passwordRepeated == passwordRepeated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordRepeated);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String passwordRepeated) initial,
    required TResult Function(String password, String passwordRepeated) loading,
    required TResult Function(String password, String passwordRepeated) loaded,
    required TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)
        error,
  }) {
    return loading(password, passwordRepeated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String passwordRepeated)? initial,
    TResult? Function(String password, String passwordRepeated)? loading,
    TResult? Function(String password, String passwordRepeated)? loaded,
    TResult? Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
  }) {
    return loading?.call(password, passwordRepeated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String passwordRepeated)? initial,
    TResult Function(String password, String passwordRepeated)? loading,
    TResult Function(String password, String passwordRepeated)? loaded,
    TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(password, passwordRepeated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PasswordChangeState {
  factory _Loading(
      {required final String password,
      required final String passwordRepeated}) = _$LoadingImpl;

  @override
  String get password;
  @override
  String get passwordRepeated;

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $PasswordChangeStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String passwordRepeated});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PasswordChangeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordRepeated = null,
  }) {
    return _then(_$LoadedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRepeated: null == passwordRepeated
          ? _value.passwordRepeated
          : passwordRepeated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  _$LoadedImpl({required this.password, required this.passwordRepeated});

  @override
  final String password;
  @override
  final String passwordRepeated;

  @override
  String toString() {
    return 'PasswordChangeState.loaded(password: $password, passwordRepeated: $passwordRepeated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeated, passwordRepeated) ||
                other.passwordRepeated == passwordRepeated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordRepeated);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String passwordRepeated) initial,
    required TResult Function(String password, String passwordRepeated) loading,
    required TResult Function(String password, String passwordRepeated) loaded,
    required TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)
        error,
  }) {
    return loaded(password, passwordRepeated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String passwordRepeated)? initial,
    TResult? Function(String password, String passwordRepeated)? loading,
    TResult? Function(String password, String passwordRepeated)? loaded,
    TResult? Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
  }) {
    return loaded?.call(password, passwordRepeated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String passwordRepeated)? initial,
    TResult Function(String password, String passwordRepeated)? loading,
    TResult Function(String password, String passwordRepeated)? loaded,
    TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(password, passwordRepeated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PasswordChangeState {
  factory _Loaded(
      {required final String password,
      required final String passwordRepeated}) = _$LoadedImpl;

  @override
  String get password;
  @override
  String get passwordRepeated;

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $PasswordChangeStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String password, String passwordRepeated, ApiError<dynamic> error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PasswordChangeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordRepeated = null,
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRepeated: null == passwordRepeated
          ? _value.passwordRepeated
          : passwordRepeated // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiError<dynamic>,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  _$ErrorImpl(
      {required this.password,
      required this.passwordRepeated,
      required this.error});

  @override
  final String password;
  @override
  final String passwordRepeated;
  @override
  final ApiError<dynamic> error;

  @override
  String toString() {
    return 'PasswordChangeState.error(password: $password, passwordRepeated: $passwordRepeated, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeated, passwordRepeated) ||
                other.passwordRepeated == passwordRepeated) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, password, passwordRepeated, error);

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String passwordRepeated) initial,
    required TResult Function(String password, String passwordRepeated) loading,
    required TResult Function(String password, String passwordRepeated) loaded,
    required TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)
        error,
  }) {
    return error(password, passwordRepeated, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String passwordRepeated)? initial,
    TResult? Function(String password, String passwordRepeated)? loading,
    TResult? Function(String password, String passwordRepeated)? loaded,
    TResult? Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
  }) {
    return error?.call(password, passwordRepeated, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String passwordRepeated)? initial,
    TResult Function(String password, String passwordRepeated)? loading,
    TResult Function(String password, String passwordRepeated)? loaded,
    TResult Function(
            String password, String passwordRepeated, ApiError<dynamic> error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(password, passwordRepeated, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PasswordChangeState {
  factory _Error(
      {required final String password,
      required final String passwordRepeated,
      required final ApiError<dynamic> error}) = _$ErrorImpl;

  @override
  String get password;
  @override
  String get passwordRepeated;
  ApiError<dynamic> get error;

  /// Create a copy of PasswordChangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
