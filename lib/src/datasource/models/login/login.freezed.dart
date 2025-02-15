// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Login _$LoginFromJson(Map<String, dynamic> json) {
  return _Login.fromJson(json);
}

/// @nodoc
mixin _$Login {
  String get access_token => throw _privateConstructorUsedError;
  String get token_type => throw _privateConstructorUsedError;

  /// Serializes this Login to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
  @useResult
  $Res call({String access_token, String token_type});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? token_type = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access_token, String token_type});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? token_type = null,
  }) {
    return _then(_$LoginImpl(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.access_token, required this.token_type});

  factory _$LoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginImplFromJson(json);

  @override
  final String access_token;
  @override
  final String token_type;

  @override
  String toString() {
    return 'Login(access_token: $access_token, token_type: $token_type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.token_type, token_type) ||
                other.token_type == token_type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, access_token, token_type);

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginImplToJson(
      this,
    );
  }
}

abstract class _Login implements Login {
  const factory _Login(
      {required final String access_token,
      required final String token_type}) = _$LoginImpl;

  factory _Login.fromJson(Map<String, dynamic> json) = _$LoginImpl.fromJson;

  @override
  String get access_token;
  @override
  String get token_type;

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
