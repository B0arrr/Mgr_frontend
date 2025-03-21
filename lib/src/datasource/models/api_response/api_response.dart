import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<R, E> with _$ApiResponse<R, E> {
  factory ApiResponse.success(R response) = _ApiResponseSuccess;

  factory ApiResponse.error(E response) = _ApiResponseError;
}

enum ApiErrorType {
  server,
  network,
  user,
  unknown,
}

class ApiError<T> extends Equatable {
  final ApiErrorType type;
  final int statusCode;
  final T error;

  const ApiError({
    required this.type,
    required this.error,
    required this.statusCode,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiError<T> && other.type == type && other.error == error;
  }

  @override
  int get hashCode => type.hashCode ^ error.hashCode;

  @override
  List<Object?> get props => [type, error];
}
